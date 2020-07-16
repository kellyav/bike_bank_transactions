-- Select info for employee number 15

BEGIN TRY
IF NOT EXISTS(
	SELECT *
	FROM staff
	WHERE staff_id =15)
		RAISERROR(’No %s with id %d’, 9, 1, ‘staff_member’, 15); --severity level is 9, so it wont be caught by the catch block!
END TRY

BEGIN CATCH
	SELECT ‘You are in the CATCH block’ AS message;
END CATCH

--Raises error: No staff member with id 15 (also includes message number, level and state)

