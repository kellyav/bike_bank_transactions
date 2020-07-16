# bike_bank_transactions
Maintenance of business tables in SQL Server, using the Bike and Bank databases. 

## Database 

bike_bank_db

### Tables 

- buyers

- products

- staff

- orders

- customers

- accounts

- transactions

- errors

## Scripts

- **employee_id**

Selects info for employee number 15, and raises an error for employee not found. 

- **monthly$**

Handles a error for the calculation of total money, for each month, earned in the bike store. 

- **product_id**

Selects a product from the products table using a given product_id

- **update_stock**

A catch block is set up to catch any errors and avoid misreporting stock.

- **buyer_register**

This script controls the possible errors in the insertion of a buyer's data. 
It also inserts those errors into the errors table.

