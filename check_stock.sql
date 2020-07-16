/* Any time a bike is going to be sold, it needs to be in stock first. 

This script checks the amount left in stock, and throws an error if there is not enough.

Scenario: 
Today, 10 'Trek CrossRip+ - 2018'  bikes are about to be sold, so the seller needs to check if they are available to be sold first. */

DECLARE @product_name AS NVARCHAR(50) = 'Trek CrossRip+ - 2018';
DECLARE @number_of_sold_bikes AS INT = 10;
DECLARE @current_stock INT;
SELECT @current_stock = stock FROM products WHERE product_name = @product_name;

DECLARE @my_message NVARCHAR(500) =
	FORMATMESSAGE('There are not enough %s bikes. You only have @current_stock in stock.', 6, 1);

IF (@current_stock - @number_of_sold_bikes < 0)
	THROW 50000, @my_message, 1;
