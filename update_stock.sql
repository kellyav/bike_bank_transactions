/* The products table does not have any constraint to check the data stored in its stock column. 
Stock counts cannot be negative.  
A constraint is required for the products table, so that only stocks greater than or equal to 0 are allowed.

Trek Neko+  has a -1 stock, which causes an error when trying to add the constraint. 
The execution will fail the first time, because there is one row where the stock equals -1. */

BEGIN TRY
	-- Add the constraint
	ALTER TABLE products
		ADD CONSTRAINT CHK_Stock CHECK (stock >= 0);
END TRY 

BEGIN CATCH
	SELECT 'An error occurred!';
END CATCH

/* To remedy this, we must change all negative stocks to 0. */ 

SELECT 
	stock
CASE WHEN stock < 0 THEN 0
ELSE stock
END AS stock_nonneg

FROM products

/* As an outside user, it is not clear why the table has negative numbers for stock. 
So as not to damage the original stock values, the new non-negative stock amounts are stored in a new column. 
The original column (that includes negativ stock counts) can be deleted, if necessary. */

-- Now, we can actually add the constraint for future use. 
BEGIN TRY
	-- Add the constraint
	ALTER TABLE products
		ADD CONSTRAINT CHK_Stock CHECK (stock_nonneg >= 0);
END TRY 

BEGIN CATCH
	SELECT 'An error occurred!';
END CATCH
