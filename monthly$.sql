/* the total amount of money, for every month, earned in the bike store. */

BEGIN TRY  	
	SELECT 'Total: ' + SUM(price * quantity) AS total
	FROM orders  
END TRY

BEGIN CATCH  
	-- Show error information.
	SELECT  ERROR_NUMBER() AS number,  
        	ERROR_SEVERITY() AS severity_level,  
        	ERROR_STATE() AS state,
        	ERROR_LINE() AS line,  
        	ERROR_MESSAGE() AS message; 	
END CATCH  

-- creates an error (including its details): Error converting data type varchar to numeric.
