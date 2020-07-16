/* Registering a new buyer in the buyers table. 

This script controls the possible errors in the insertion of this person's data. 
It also inserts those errors into the errors table. */

BEGIN TRY
	INSERT INTO buyers (first_name, last_name, email, phone)
		VALUES ('Peter', 'Thompson', 'peterthomson@mail.com', '555000100');
END TRY

BEGIN CATCH
	SELECT 'An error occurred inserting the buyer! You are in the first CATCH block';
    -- nested TRY block
    BEGIN TRY
    	INSERT INTO errors 
        	VALUES ('Error inserting a buyer');
        SELECT 'Error inserted correctly!';
	END TRY
    -- nested CATCH block
    BEGIN CATCH
    	SELECT 'An error occurred inserting the error! You are in the nested CATCH block';
    END CATCH 
END CATCH
