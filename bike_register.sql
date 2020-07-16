/* A registration needs to be created for 3 Super bike bikes with a price of $499.99, 
while catching the possible errors generated in the execution of the stored procedure */

CREATE PROCEDURE insert_product
  @product_name VARCHAR(50),
  @stock INT,
  @price DECIMAL
AS
BEGIN TRY
    INSERT INTO products (product_name, stock, price)
        VALUES (@product_name, @stock, @price);
END TRY
BEGIN CATCH    
    INSERT INTO errors VALUES ('Error inserting a product');  
    THROW;  
END CATCH


BEGIN TRY
	-- Execute the stored procedure
	EXEC insert_product
    	-- Set the values for the parameters
    	@product_name = 'Super bike',
        @stock = 3,
        @price = 499.99;
END TRY

BEGIN CATCH
	-- Select the error message
	SELECT *
	FROM errors;
END CATCH
