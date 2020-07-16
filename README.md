# bike_error_handle
Maintenance of business tables in SQL Server, using the Bike database. 

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

- **select_staff**

 Selects all the information of a member from the staff table using a given staff_id. 
 
- **bike_register**
 
A registration needs to be created for 3 Super bike bikes with a price of $499.99, 
while catching the possible errors generated in the execution of the stored procedure. This script does exactly that.

- **check_stock**

Any time a bike is going to be sold, it needs to be in stock first. 
This script checks the amount left in stock (given a scenario), and throws an error if there is not enough.



## Database 

bike_bank_db.sql

Includes information about bike inventory (stock), prices, names of bikes, etc.

### Tables 

Ones we used in this repo:

- buyers

- products

- staff

- orders

- errors

Others:

- customers

- accounts

- transactions
