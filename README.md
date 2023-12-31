# <span style="color:darkblue; font-size:50px;">Introduction</span>

## 1. What is a Database?
<details> 

A database is a structured collection of data that is organized and managed to provide efficient retrieval and manipulation of information. It serves as a reliable and central repository for storing data in various forms, such as text, numbers, images, and more. Databases are essential components of modern computing, powering a wide range of applications and systems across industries.
</details> 

## 2. Importance of Databases
<details> 

Databases play a crucial role in managing and accessing large volumes of data efficiently. They offer several benefits that make them indispensable for modern applications:

- **Data Organization**: Databases provide a structured approach to organizing data, allowing easy categorization and storage of information.

- **Data Integrity**: With the use of constraints and validations, databases ensure that data remains accurate and consistent, reducing the risk of errors and discrepancies.

- **Data Security**: Databases offer security features to control access to sensitive information, protecting data from unauthorized users.

- **Data Scalability**: As data volumes grow, databases can scale to handle increasing loads, ensuring optimal performance.

- **Data Retrieval**: Databases support querying and filtering data, enabling quick and precise retrieval of information.
</details> 

## 3. Basic Structure of a Database
<details> 

A database is a structured collection of data organized using a hierarchical model called a Database Schema. It defines the logical and physical structure of the database, including tables, columns, relationships, and constraints. Let's explore the fundamental components of a database structure:

1. **Database:**
   The highest-level container that holds all the data and related information. It can consist of multiple tables, views, indexes, procedures, and other objects.

2. **Table:**
   A collection of data organized in rows and columns. Each row represents a record, and each column represents a specific attribute of the data.

3. **Column (Field):**
   A single data attribute within a table. It defines the type of data it can hold, such as text, numbers, dates, etc.

4. **Row (Record):**
   A single instance or record in a table. It contains a set of values, each corresponding to a column, making up a complete data entry.

5. **Primary Key:**
   A unique identifier for each row in a table. It ensures that each record is uniquely identifiable and helps establish relationships between tables.

6. **Foreign Key:**
   A column or a set of columns in one table that refers to the primary key of another table. It establishes relationships between tables, enabling data integrity and consistency.

7. **Index:**
   A data structure that improves the speed of data retrieval. It allows quick access to data based on specific columns, avoiding full table scans.

8. **Constraints:**
   Rules that enforce data integrity and define limitations on the data that can be stored in a table. Common constraints include NOT NULL, UNIQUE, CHECK, and DEFAULT.

9. **Views:**
   Virtual tables created from one or more tables or other views. They present a specific subset of data or present data in a different way than the original tables.

10. **Triggers:**
    Stored procedures that automatically execute in response to specific events, such as data modifications (INSERT, UPDATE, DELETE), ensuring data consistency.

The structure of a database is determined by the relationship between these components, and the schema provides the blueprint for how data should be stored, organized, and accessed within the database system. Databases can be further categorized into different types based on their models, such as relational databases (like MySQL), NoSQL databases, and more, each with its own specific structure and characteristics.

</details> 

# <span style="color:darkblue; font-size:50px;">Installation</span>
<details> 

## 1. How to Set Up a MySQL Container and Execute a SQL File
### Prerequisites

Ensure that Docker is installed on your machine. If you haven't installed it yet, follow the official Docker installation guide for your operating system.
### Configuration

**Step-by-Step Instructions**

**Clone the Repository**:
   Clone the project repository to your local machine using the git clone command.

**Navigate to the Project Directory**:
   Open your terminal or command prompt and navigate to the root of the cloned project.

**Start the MySQL Container**:

   To start the MySQL container, use Docker Compose. Run the following command in your terminal:


```
docker-compose up -d
```
This command will create and run the MySQL container in the background using the configurations defined in the docker-compose.yaml file.

**Verify Container Status:**

To check if the container is running, execute the following command:


```docker ps```

Ensure that the MySQL container is listed and the necessary ports (e.g., 3306 and 3301) are properly mapped.

**Execute the SQL File:**

With the MySQL container up and running, you can execute the primeiro.sql file. Use the following command to run the SQL file inside the container:



```docker exec -i bia_database mysql -u root -proot < src/creatingDB.sql```


**Check the Database:**

To verify that the SQL file executed successfully and the data was inserted, access the MySQL terminal inside the container by running:

``` docker exec -it bia_database mysql -u root -p ```

</details>

# <span style="color:darkblue; font-size:50px;">MYSQL</span>
## $${\color{darkblue}\text{\Large Basics}}$$

## <span style="color:darkblue; font-size:30px;">1 . Introduction to MySQL</span> 
<details> 

### 1. What is MySQL?

MySQL is a fast, reliable, and scalable RDBMS that allows you to efficiently store, manage, and retrieve vast amounts of data. It is widely used in various applications, ranging from small web projects to large enterprise-level systems. MySQL is known for its exceptional performance, robustness, and ease of use, making it a top choice for developers and businesses alike.

### 2. Why Use MySQL?

MySQL offers several key advantages that make it stand out among other database management systems:

- **Open Source**: MySQL is an open-source software, meaning it is freely available for use, distribution, and modification. This lowers the total cost of ownership and allows for community contributions.

- **Ease of Use**: With its straightforward installation and user-friendly interface, MySQL is accessible to both beginners and experienced developers.

- **High Performance**: MySQL is optimized for speed and efficiency, ensuring rapid data processing and query execution even in high-traffic environments.

- **Scalability**: As your data grows, MySQL can easily scale to meet your increasing demands, providing a seamless experience for your users.

- **Flexibility**: MySQL supports various data types, indexing options, and storage engines, allowing you to tailor the database to your specific needs.

- **Robust Security**: MySQL offers strong security features, including encryption, user authentication, and access control, ensuring the protection of your sensitive data.

### 3. How to Install MySQL on Ubuntu

MySQL is a popular open-source Relational Database Management System (RDBMS) used to store and manage data efficiently. This tutorial will guide you through the process of installing MySQL on Ubuntu.

#### Step 1: Update Package List

Open a terminal (Ctrl + Alt + T) and update the package list to ensure you have the latest information about available packages:

```sudo apt update```

#### Step 2: Install MySQL Server

To install the MySQL server, use the following command:

``` sudo apt install mysql-server```

During the installation, you will be prompted to set a password for the MySQL root user. Choose a strong password and remember it, as you will need it later for administrative tasks.

#### Step 3: Start and Enable MySQL

Start the MySQL service and enable it to start automatically at system boot:

```sudo systemctl start mysql``` 
```sudo systemctl enable mysql ```

#### Step 4: Check MySQL Status

Verify that MySQL is running:
```sudo systemctl status mysql```

If everything is set up correctly, you should see "active (running)" in the output.

#### Step 5: Secure MySQL Installation

MySQL comes with a security script to improve the installation's security. Run it with the following command:
``` 
sudo mysql_secure_installation
```

The script will prompt you to review and improve the MySQL security settings. Follow the on-screen instructions to set a secure password policy, remove anonymous users, disallow root login remotely, and remove the test database.

#### Step 6: Access MySQL Shell

To access the MySQL shell, use the following command and enter your MySQL root password when prompted:

``` 
sudo mysql -u root -p
```

You should now be in the MySQL shell, where you can start working with databases and execute SQL queries.


### 4. Data Types in MYSQL
| Data Type   | Description                                |
|-------------|--------------------------------------------|
| BIT         | Small integer value                        |
| BOOLEAN     | Synonym for TINYINT(1)                     |
| CHAR        | Fixed-length string                        |
| DATE        | Date in the 'YYYY-MM-DD' format            |
| DATETIME    | Date and time in the 'YYYY-MM-DD HH:MM:SS' format |
| DECIMAL     | Decimal number                            |
| ENUM        | Set of chosen values                       |
| INT         | Integer number                            |
| JSON        | JSON data format                           |
| TIME        | Time in the 'HH:MM:SS' format             |
| TIMESTAMP   | Date and time in the 'YYYY-MM-DD HH:MM:SS' format |
| VARCHAR     | Variable-length string                    |

</details> 

## <span style="color:darkblue; font-size:30px;">2. Managing Databases</span> 
<details> 

### 1. Create Database

In MySQL, the "CREATE DATABASE" command is used to create a new database within the MySQL server. A database is a structured collection of data that stores information in tables, columns, and rows. The "CREATE DATABASE" command is essential for setting up a new database where you can store and manage your data efficiently.

#### Syntax

The syntax for creating a new database in MySQL is as follows:

```sql
CREATE DATABASE test;
```
To verify that the database was successfully created, you can use the following command to show a list of all databases in the MySQL server:

```sql
SHOW DATABASES;
```
This command will display a list of all databases, including the one you just created.
```
mysql> show databases;

+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+

```
### 2. Select Database

In MySQL, the `USE` statement is used to select a specific database within the MySQL server. Once a database is selected using the `USE` statement, any subsequent SQL queries will be executed in the context of that database.

#### Syntax

The syntax for using the `USE` statement is as follows:

```sql
USE database_name;
```

**Example**

Suppose you have a database named "test" and you want to work with the tables and data inside it. You can use the USE statement as follows:

```sql

USE test;
```

After executing this statement, any SQL queries you run will affect the "test" database. For example:

```sql

SELECT * FROM users;
```


The above query will retrieve all records from the "users" table within the "test" database.
Verification

To verify that the database selection was successful, you can use the following command:

```sql

SELECT DATABASE();
```

This will show the name of the currently selected database. If you see the name of the database you intended to use, it means the USE statement worked correctly.
### 3. Drop Database


In MySQL, the `DROP DATABASE` command is used to permanently delete an existing database from the MySQL server. This command will remove all the tables, data, and other objects associated with the specified database. It is important to exercise caution while using the `DROP DATABASE` command, as it is irreversible and can lead to data loss.

#### Syntax

The syntax for dropping a database in MySQL is as follows:

```sql
DROP DATABASE [IF EXISTS] database_name;
```

`IF EXISTS` is an optional clause. If specified, it allows the DROP DATABASE command to execute successfully even if the specified database does not exist. If the database does not exist and this clause is not used, MySQL will return an error.

**Caution**

As mentioned earlier, the DROP DATABASE command is irreversible and will delete all data in the specified database. It is crucial to double-check the database name before executing this command to avoid unintended data loss.


1. Drop the `categories` table from the database.

2. Drop the `books` table from the database.

3. Finally, drop the `bookstore` database.

Complete these tasks using MySQL commands. You can use a MySQL client or command-line interface to execute the SQL commands and perform the tasks.

Have fun practicing MySQL database management!
### Exercise: Managing Databases

#### Task 0 : Migrating the project from Github

1. Clone the project:
``` git@github.com:biiaverly/MYSQL.git ```

2. Setting up the environment
``` docker compose up --build -d ```

3. Executing the file
```docker exec -i bia_database mysql -u root -proot <src/ManagingDb.sql```

#### Task 1: Create a Database

1. Create a new database named `bookstore` using the "CREATE DATABASE" command.

#### Task 2: Select a Database

1. Use the "USE" statement to select the `bookstore` database.

#### Task 3: Drop a Database

1. Drop the `bookstore` database using the "DROP DATABASE" command.

Before executing any of the tasks, make sure to verify the results of each task to ensure that they were performed correctly.

#### Verification

To verify the results of each task, use the following commands:

1. To verify Task 1, use the "SHOW DATABASES" command to see a list of all databases, including the `bookstore` database.

2. To verify Task 2, use the "SELECT DATABASE()" command to check if the `bookstore` database is currently selected.

3. To verify Task 3, use the "SHOW DATABASES" command again to confirm that the `bookstore` database has been dropped and is no longer listed.

Remember to use MySQL commands in your queries and verify the results after completing each task. Happy practicing!
</details> 

## <span style="color:darkblue; font-size:30px;">3. Managing Tables</span> 
<details> 

### 1. MySQL Storage Engines

In MySQL, a storage engine is a software module that handles the storage, retrieval, and management of data for database tables. MySQL supports multiple storage engines, and each engine has its own set of features, performance characteristics, and capabilities. Depending on your specific use case and requirements, you can choose the most suitable storage engine for your MySQL tables.

Some of the commonly used MySQL storage engines are:

1. **InnoDB**: This is the default storage engine for MySQL since version 5.5. InnoDB supports ACID (Atomicity, Consistency, Isolation, Durability) transactions, row-level locking, and foreign key constraints. It is well-suited for general-purpose applications and is widely used for its reliability and performance.

2. **MyISAM**: Before InnoDB became the default, MyISAM was the default storage engine. It does not support transactions or foreign keys, but it is known for its simplicity and fast read performance. MyISAM is suitable for read-heavy applications with infrequent updates.

3. **Memory (HEAP)**: The Memory storage engine stores data in memory, which makes it extremely fast but volatile. Data is lost when the MySQL server restarts. It is suitable for caching and temporary data storage.

4. **CSV**: The CSV storage engine stores data in comma-separated value files. It is useful for importing and exporting data in CSV format but is not suitable for high-performance or concurrent operations.

5. **Archive**: The Archive storage engine is optimized for write-once, read-many scenarios. It is useful for storing large amounts of historical or archival data efficiently.

6. **NDB (MySQL Cluster)**: The NDB storage engine is designed for use with MySQL Cluster, which provides high availability and data distribution across multiple nodes. It is well-suited for large-scale, mission-critical applications.

To specify a storage engine when creating a table in MySQL, you can use the `ENGINE` keyword. For example:

```sql
CREATE TABLE my_table (
  id INT PRIMARY KEY,
  name VARCHAR(50)
) ENGINE=InnoDB;
```
### 2. Create Tables
To create a table in MySQL, you can use the `CREATE TABLE` statement. The basic syntax is as follows:

```sql
CREATE TABLE table_name (
  column1 data_type1 [constraints],
  column2 data_type2 [constraints],
  ...
);

Example: 

CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INT,
  department VARCHAR(50),
  salary DECIMAL(10, 2) DEFAULT 0.00
);

```
In this example, we create a table named employees with columns for id, name, age, department, and salary. The id column is the primary key, the name column must have a value (NOT NULL), the age column allows NULL values, the department column is a variable-length string, and the salary column has a default value of 0.00.

You can also add various constraints to enforce data integrity and relationships between tables, such as FOREIGN KEY constraints and UNIQUE constraints.
### 3. AUTO_INCREMENT

Auto Increment is a feature in MySQL that automatically generates a unique numeric value for a column whenever a new row is inserted into the table. It is commonly used for primary key columns to ensure each row has a unique identifier. The auto-incremented value is automatically managed by the database, saving you the effort of manually assigning unique values.

To enable auto-increment for a column, you need to use the `AUTO_INCREMENT` attribute when defining the column. Typically, you use this attribute in combination with an integer data type such as `INT` or `BIGINT`.

Here's an example of creating a table with an auto-incremented primary key column:

```sql
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  age INT
);
```
To insert data into the table, you omit the id column, and MySQL will handle it automatically.
The id column in this INSERT statement does not have a value specified, so MySQL will assign the next available auto-incremented value to it.

Keep in mind that auto-incremented values are unique within the table, but they may have gaps if rows are deleted or if you perform bulk inserts and then rollback the transaction. Additionally, the maximum value an auto-incremented column can reach depends on the data type used (e.g., INT, BIGINT).
### 4. Rename Tables
In MySQL, you can rename a table using the `RENAME TABLE` statement. This allows you to change the name of an existing table in the database without altering its structure or data. The basic syntax is as follows:

```sql
RENAME TABLE old_table_name TO new_table_name;
```
It's important to note that when you rename a table, all references to that table within the database (such as foreign key constraints, views, and stored procedures) will also be updated to use the new table name.
### 5. Alter Tables
In MySQL, the ALTER TABLE statement is used to modify an existing table's structure. With this statement, you can add, modify, or delete columns, change data types, add or remove indexes, and perform other changes to the table's definition.

The basic syntax for the ALTER TABLE statement is as follows:
```sql
ALTER TABLE table_name action;
```
**action**: The specific alteration you want to perform, such as adding a column, modifying a column, or dropping a column.
```sql
1. Adding a Column:

   ALTER TABLE table_name ADD column_name data_type [constraints];
   ALTER TABLE contacts ADD phone VARCHAR(15);

2. Modifying a Column:

   ALTER TABLE table_name MODIFY column_name new_data_type [new_constraints];
   ALTER TABLE employees MODIFY age TINYINT;

4. Dropping a Column:

   ALTER TABLE table_name DROP column_name;
   ALTER TABLE users DROP email;

5. Adding an Index

   ALTER TABLE table_name ADD INDEX index_name (column1, column2, ...);
   ALTER TABLE table_name DROP INDEX index_name;

```
### 6. Drop Tables
In MySQL, you can delete a table from the database using the DROP TABLE statement. Dropping a table permanently removes it, along with all its data and associated objects (e.g., indexes, triggers, constraints, etc.). Therefore, exercise caution when using this statement, as data loss is irreversible.

The basic syntax for the DROP TABLE statement is as follows:
```sql
DROP TABLE table_name;
```
Before dropping a table, ensure that you have a backup of the data or that you genuinely want to remove it permanently, as there is no way to recover the data after executing the DROP TABLE statement.
To prevent accidental table deletion, many database administrators typically perform such operations in test or development environments before executing them in production.

Always double-check the table name and confirm that you have taken all necessary precautions before executing the DROP TABLE statement.
### 7. Temporary Tables

In MySQL, temporary tables are created to hold temporary data that exists only for the duration of a session. These tables are useful when you need to store and manipulate intermediate results during a session or when you want to break down complex queries into smaller parts for easier processing.

Temporary tables have the following key characteristics:

1. **Session Scope**: Temporary tables are visible only within the session that creates them. When the session ends, the temporary table is automatically dropped, and its data is cleared.

2. **Unique Names**: Temporary tables have unique names within a session. Even if multiple sessions create temporary tables with the same name, they are independent and do not interfere with each other.

3. **Data Persistence**: The data in a temporary table is persisted throughout the session. You can perform various operations on the temporary table, just like with regular tables.

4. **No Transactions**: Temporary tables are not transaction-safe. Any data modifications made to temporary tables are immediately visible to other queries within the same session.

#### Creating Temporary Tables

To create a temporary table, you can use the `CREATE TEMPORARY TABLE` statement or the shorthand version `CREATE TEMPORARY TABLE`:

```sql
CREATE TEMPORARY TABLE temp_table_name (
  column1 data_type1 [constraints],
  column2 data_type2 [constraints],
  ...
);

Example:
CREATE TEMPORARY TABLE temp_orders (
  order_id INT PRIMARY KEY,
  product_name VARCHAR(100) NOT NULL,
  quantity INT
);
```
**Using Temporary Tables**
You can perform various operations on temporary tables, such as inserting data, updating records, or joining them with other tables. Temporary tables behave similarly to regular tables, but they are limited to the session where they were created.

```sql
CREATE TEMPORARY TABLE temp_orders (
  order_id INT PRIMARY KEY,
  product_name VARCHAR(100) NOT NULL,
  quantity INT
);
```

**Dropping Temporary Tables**
Temporary tables are automatically dropped at the end of the session. However, if you want to explicitly remove a temporary table before the session ends, you can use the DROP TEMPORARY TABLE statement:

```sql
DROP TEMPORARY TABLE temp_table_name;
```
Remember that temporary tables are useful for storing intermediate results or breaking down complex queries. Since they are session-specific and do not persist beyond the session, they are ideal for managing temporary data during a session without affecting the main database structure.
### 8. Truncate Tables
In MySQL, the TRUNCATE TABLE statement is used to quickly delete all rows from a table, effectively resetting the table to its original state. Unlike the DELETE statement, which removes rows one by one and logs individual deletions, TRUNCATE TABLE is a faster operation as it removes all rows at once without generating individual row deletion logs. However, it is essential to note that TRUNCATE TABLE is a DDL (Data Definition Language) operation and cannot be rolled back using a transaction.

The basic syntax for the TRUNCATE TABLE statement is as follows:
```sql 
TRUNCATE TABLE table_name;
```
It's crucial to use TRUNCATE TABLE with caution since it permanently removes all data from the table and cannot be undone. Also, note that TRUNCATE TABLE requires the DELETE privilege on the table.

It's important to understand the differences between TRUNCATE TABLE and DELETE FROM:

TRUNCATE TABLE is faster and more efficient for deleting all rows from a table.

DELETE FROM is more flexible and allows you to specify conditions to delete specific rows, but it can be slower, especially for large tables.

When you want to remove all data from a table and reset its primary key auto-increment value, TRUNCATE TABLE is a good option. However, if you need to selectively delete rows or retain some data, using the DELETE FROM statement with appropriate conditions is a better choice.
### 9. Generated Columns

In MySQL, a generated column is a virtual column that derives its values based on an expression or formula defined during column creation. The generated column's value is not physically stored in the table but is computed on the fly whenever the column is queried. This feature was introduced in MySQL 5.7. Generated columns provide a convenient way to calculate and display values without the need to store redundant data in the table.

There are two types of generated columns in MySQL:

1. **Stored Generated Columns**: These columns store the computed values in the table. The values are updated automatically whenever the dependent columns change. You can index stored generated columns and use them in various operations.

2. **Virtual Generated Columns**: These columns do not store any data in the table but calculate the value when queried. Virtual generated columns cannot be indexed, but they provide a lightweight way to retrieve computed values without consuming extra storage.

#### Creating Generated Columns

To create a generated column, you use the `GENERATED ALWAYS AS` syntax. Here's the basic syntax:

```sql
CREATE TABLE table_name (
  column1 data_type GENERATED ALWAYS AS (expression) [VIRTUAL | STORED],
  ...
);

Example:
CREATE TABLE sales (
  id INT AUTO_INCREMENT PRIMARY KEY,
  quantity INT,
  price DECIMAL(10, 2),
  total_price DECIMAL(10, 2) GENERATED ALWAYS AS (quantity * price) STORED
);
--In this example, the total_price column is a stored generated column that calculates the total price by multiplying the quantity and price columns.
```

**Using Generated Columns**
You can use generated columns in SELECT queries, and their values will be computed on the fly based on the defined expressions. For example:
```sql
SELECT id, quantity, price, total_price FROM sales;
```

**Modifying Generated Columns**
Once a generated column is created, its expression cannot be altered directly. If you need to change the expression, you must first drop the column and then add it again with the new expression.

**Limitations**
The expression used for generated columns must be deterministic and cannot reference other generated columns.

Virtual generated columns cannot be indexed, and they cannot have default values or constraints.

The GENERATED ALWAYS clause is required for generated columns. MySQL does not support explicitly specifying values for generated columns during INSERT or UPDATE operations.

Generated columns offer a powerful feature to calculate and display data dynamically without physically storing it in the table, providing more flexibility and efficiency in data handling and representation.
### Exercise: Setting up Bookstore Database and Managing Books
#### 1. Database and Table Setup

First, the script creates or drops existing databases and creates a new one named `bookstore`. It then creates a table called `books` with columns `id`, `title`, `author`, `publication_year`, `price`, and `category`. The `id` column is set as the primary key with auto-incrementing values.
#### 2. Renaming and Modifying the Table

Next, the script renames the `books` table to `bookstore_books` using the `ALTER TABLE` statement. It also adds a new column named `language` to store the book language after the `price` column, and it modifies the `price` column to make it `NOT NULL`.
#### 3. Inserting Book Records

The script inserts four book records into the `bookstore_books` table using `INSERT INTO` statements. The inserted books include "The Great Gatsby," "Harry Potter and the Philosopher's Stone," "A Casa dos Espíritos," and "Cien años de soledad," with their respective details like title, author, publication year, price, language, and category.
#### 4. Temporary Table Creation

A temporary table named `temp_books` is created using a `CREATE TEMPORARY TABLE` statement. It stores records from the `bookstore_books` table that have a publication year greater than or equal to 2000.
#### 5. Calculated Column

Finally, a new column named `discount` is added to the `bookstore_books` table using the `ALTER TABLE` statement. The `discount` column is a calculated column that stores 10% of the book's price, based on the `price` column's values.

Please ensure that this script is executed in a MySQL environment to create the `bookstore` database and manage book data in the `bookstore_books` table.

</details> 

## <span style="color:darkblue; font-size:30px;">4. Data Manipulation</span> 
<details> 

### 1. Querying Data
#### SELECT

The SELECT statement is used to retrieve data from one or more tables in the database. It allows you to specify the columns you want to retrieve, apply filtering conditions, and sort the results.

Syntax:
```sql
SELECT column1, column2, ... FROM table_name;
```

**Example**
```sql
employees table
---------------------------------
| emp_id | emp_name | emp_age |
---------------------------------
|  1     | John     | 30      |
|  2     | Sarah    | 28      |
|  3     | Michael  | 35      |
---------------------------------

SELECT * FROM employees;
SELECT emp_name, emp_age FROM employees;

output:

-----------------
| emp_name | emp_age |
-----------------
| John     | 30      |
| Sarah    | 28      |
| Michael  | 35      |
-----------------


```

### 2. Sorting Data
#### ORDER BY

The ORDER BY clause is used to sort the result set in ascending or descending order based on one or more columns.
Syntax:
```sql
SELECT column1, column2, ... FROM table_name ORDER BY column1 ASC|DESC, column2 ASC|DESC, ...;
```

### 3. Filtering data
#### WHERE

The WHERE clause is used to filter the result set based on specified conditions. It allows you to extract only the rows that meet the specified criteria.

Syntax:
```sql
SELECT column1, column2, ... FROM table_name WHERE condition;

SELECT emp_name, emp_age FROM employees WHERE emp_age > 30;

output:
-----------------
| emp_name | emp_age |
-----------------
| Michael  | 35      |
-----------------

```
#### SELECT DISTINCT

The SELECT DISTINCT statement is used to retrieve unique values from a column.
Syntax:

```sql
SELECT DISTINCT column FROM table_name;

fruits table
-----------------
| fruit_name |
-----------------
| Apple      |
| Banana     |
| Orange     |
| Apple      |
| Mango      |
-----------------

SELECT DISTINCT fruit_name FROM fruits;

-----------------
| fruit_name  |
-----------------
| Apple       |
| Banana      |
| Orange      |
| Mango       |
-----------------

```
#### AND

The AND operator is used to combine multiple conditions in a WHERE clause. It ensures that all conditions must be true for a row to be included in the result set.

Syntax:

```sql
SELECT column1, column2, ... FROM table_name WHERE condition1 AND condition2 AND ...;

SELECT emp_name, emp_age FROM employees WHERE emp_age > 30 AND emp_name = 'Michael';
-----------------
| emp_name | emp_age |
-----------------
| Michael  | 35      |
-----------------

```
#### OR

The OR operator is used to combine multiple conditions in a WHERE clause. It includes rows in the result set if any of the specified conditions are true.

Syntax:

```sql
SELECT column1, column2, ... FROM table_name WHERE condition1 OR condition2 OR ...;

SELECT emp_name, emp_age FROM employees WHERE emp_age > 30 OR emp_name = 'Sarah';
-----------------
| emp_name | emp_age |
-----------------
| Sarah    | 28      |
| Michael  | 35      |
-----------------

```
#### IN

The IN operator is used to check if a value matches any value in a list of specified values. It is often used in the WHERE clause.

Syntax:

```sql
SELECT column1, column2, ... FROM table_name WHERE column IN (value1, value2, ...);

SELECT emp_name, emp_age FROM employees WHERE emp_age IN (28, 30, 35);
-----------------
| emp_name | emp_age |
-----------------
| John     | 30      |
| Sarah    | 28      |
| Michael  | 35      |
-----------------

```
#### BETWEEN

The BETWEEN operator is used to retrieve rows with a value within a specified range, inclusive.

Syntax:
```sql
SELECT column1, column2, ... FROM table_name WHERE column BETWEEN value1 AND value2;
SELECT emp_name, emp_age FROM employees WHERE emp_age BETWEEN 28 AND 35;
-----------------
| emp_name | emp_age |
-----------------
| John     | 30      |
| Sarah    | 28      |
| Michael  | 35      |
-----------------


```
#### LIKE

The LIKE operator is used in SQL queries to retrieve rows that match a specific pattern using wildcard characters.

**Syntax**:
```sql
SELECT column1, column2, ... FROM table_name WHERE column LIKE 'pattern';

SELECT emp_name, emp_age FROM employees WHERE emp_name LIKE 'J%';
-----------------
| emp_name | emp_age |
-----------------
| John     | 30      |
-----------------

```
#### NOT IN
The NOT IN operator in SQL is used to retrieve rows where a specific column's value does not match any of the values specified in the NOT IN list. It is the negation of the IN operator.

**Syntax**:
```sql
SELECT column1, column2, ... FROM table_name WHERE column_name NOT IN (value1, value2, ...);

SELECT emp_name, emp_age FROM employees WHERE emp_age NOT IN (28, 30);

-----------------
| emp_name | emp_age |
-----------------
| Sarah    | 25      |
| Michael  | 35      |
-----------------
```
#### LIMIT
The LIMIT clause in SQL is used to restrict the number of rows returned by a query. It allows you to limit the result set to a specific number of rows, starting from the first row of the result.

**Syntax**:
```sql
SELECT column1, column2, ... FROM table_name LIMIT number_of_rows;

SELECT emp_name, emp_age FROM employees LIMIT 2;

-----------------
| emp_name | emp_age |
-----------------
| John     | 30      |
| Sarah    | 28      |
-----------------
```
#### IS NULL
The LIMIT clause in SQL is used to restrict the number of rows returned by a query. It allows you to limit the result set to a specific number of rows, starting from the first row of the result.

**Syntax**:
```sql
SELECT column1, column2, ... FROM table_name WHERE column_name IS NULL;

students table
-----------------------
| student_id | name   |
-----------------------
| 1          | John   |
| 2          | Sarah  |
| 3          | NULL   |
-----------------------

SELECT student_id, name FROM students WHERE name IS NULL;

-----------------------
| student_id | name   |
-----------------------
| 3          | NULL   |
-----------------------

```
#### Exercise 

**Question:** 

<details>

Consider a database with the following data inserted into the `departments` and `employees` tables:

<summary><strong>Scenario:</strong></summary>

```sql
INSERT INTO departments (name)
VALUES
  ('HR'),
  ('IT'),
  ('Finance'),
  ('Marketing');

INSERT INTO employees (name, department, salary)
VALUES
  ('John Smith', 'HR', 55000),
  ('Alice Johnson', 'IT', 65000),
  ('Bob Williams', 'Finance', 60000),
  ('Mary Brown', 'HR', 52000);
  ```

</details>


1. Retrieve all employees:

2. Sort employees in ascending order:

3. Select all employees who work in the HR department:

4. Retrieve all existing departments:

5. Select all employees who work in the HR department and have a salary over 50000:

6. Select all employees who have worked in either the HR or IT departments:

7. Select all employees who have worked in the HR or IT departments using the IN operator:

8. Retrieve all employees with a salary between 4000 and 6000:

9. Select all employees with "John" in their name:



### 4. Joing Tables
#### Table & Column Aliases
Aliases in MySQL are temporary names assigned to tables or columns in a query. They provide a way to simplify the syntax and improve readability, especially when dealing with complex queries or when joining tables. By using aliases, you can refer to tables and columns with shorter, more meaningful names.

```sql
SELECT e.name AS employee_name, d.name AS department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.id;
 ```

In this example, e and d are aliases for the employees and departments tables, respectively. The AS keyword is optional, and you can use it to explicitly indicate that a name is an alias.
#### Joins
Joins are used to combine rows from different tables based on related columns. The three main types of joins supported in MySQL are:

**INNER JOIN**
The `INNER JOIN` is one of the most commonly used joins in MySQL. It allows you to query rows from a table that have matching rows in another table based on a specified condition.
```sql
SELECT e.name AS employee_name, d.name AS department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.id;
 ```
 In this example, the INNER JOIN is used to combine data from the employees table (e) and the departments table (d) based on the common department_id column. Only the rows with matching department_id values in both tables will be included in the result set.


**LEFT JOIN**
The `LEFT JOIN `returns all rows from the left table and the matching rows from the right table. If no match is found in the right table, NULL values are returned for the right table's columns.

```sql
SELECT e.name AS employee_name, d.name AS department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.id;

 ```
In this example, the LEFT JOIN is used to retrieve all employees from the employees table (e) along with their respective department names from the departments table (d). If an employee does not have a corresponding department (department_id is NULL), the result will still include that employee's row, but with NULL for the department_name.

**RIGHT JOIN**
The RIGHT JOIN returns all rows from the right table and the matching rows from the left table. If no match is found in the left table, NULL values are returned for the left table's columns.


```sql
SELECT e.name AS employee_name, d.name AS department_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.id;
```

In this example, the RIGHT JOIN is used to retrieve all departments from the departments table (d) along with the employees assigned to each department from the employees table (e). If a department has no employees (department_id is NULL in the employees table), the result will still include that department's row, but with NULL for the employee_name.

**CROSS JOIN**
A CROSS JOIN is used to create a Cartesian product of rows from multiple tables. It combines each row from the first table with each row from the second table, resulting in a larger result set.

```sql
SELECT e.name AS employee_name, d.name AS department_name
FROM employees e
CROSS JOIN departments d;
 ```
 In this example, the CROSS JOIN combines every row from the employees table (e) with every row from the departments table (d), resulting in all possible combinations of employees and departments.

 **SELF JOIN**
 A self-join is a special type of join where a table is joined to itself using table aliases. It allows you to connect rows within the same table based on related columns. Self-joins are useful when you need to compare rows or create hierarchical relationships within a table.
 ```sql
 SELECT e.name AS employee_name, m.name AS manager_name
FROM employees e
INNER JOIN employees m ON e.manager_id = m.id;
```
In this example, the employees table is self-joined to retrieve each employee's name along with their respective manager's name. The manager_id column in the employees table is used to establish the relationship between employees and their managers.
#### Exercise: Joining Tables in MySQL

In this exercise, you will practice using various types of joins to combine data from multiple tables in MySQL. You will also explore the usage of table and column aliases to improve query readability.

1. Create the necessary tables to store customer information, order details, and product data.

2. Write SQL queries to retrieve the following information:

      a. Perform an INNER JOIN to get customer names and their orders. This query will combine the 'customers' and 'orders' tables based on the 'customer_id' field, showing customer names and their respective order details.

      b. Perform a LEFT JOIN to get all products and their order details, including products without any orders. This query will display all products from the 'products' table and any matching order details from the 'orders' table. Products without any orders will also be included in the result.

      c. Perform a RIGHT JOIN to get all customers and their orders, including customers without any orders. This query will show all customers from the 'customers' table and any matching order details from the 'orders' table. Customers without any orders will also be included in the result.

      d. Perform a CROSS JOIN to get all possible combinations of customers and products. This query will create a Cartesian product between the 'customers' and 'products' tables, showing all possible combinations of customers and products.

      e. Perform a SELF-JOIN to get customers who share the same address. This query will join the 'customers' table with itself using aliases, connecting rows within the same table based on the 'address' field. It will show customers who have the same address but different IDs.

3. Execute the queries and verify that the results are correct.

</details> 



## $${\color{darkblue}\text{\Large MySQL Stored Procedures}}$$

## <span style="color:darkblue; font-size:30px;">1. Stored procedure basics</span> 
<details>

#### Introduction to SQL Stored Procedures

Stored procedures are blocks of code that can be executed in a database. They allow you to encapsulate SQL logic and business rules on the database server. Stored procedures are beneficial for code reusability, performance enhancement, and security.

#### Advantages of Stored Procedures:

- **Modularity:** Stored procedures allow you to break complex tasks into smaller, reusable parts.
- **Performance:** By reducing round-trip communication, stored procedures can improve execution speed.
- **Security:** You can grant permissions on procedures, hiding underlying table details.
#### Changing MySQL Delimiter

When working with stored procedures, you need to change the delimiter to something other than the semicolon (;) to prevent conflicts with semicolons used within the procedure code. Changing the delimiter ensures that MySQL doesn't interpret the semicolons in the procedure code as the end of the statement.

```sql
DELIMITER //

-- Example stored procedure
CREATE PROCEDURE MyProcedure()
BEGIN
    -- Procedure logic here
END;
//

DELIMITER ;

 ```
#### Creating Stored Procedures:
To create a stored procedure in MySQL, you use the CREATE PROCEDURE statement. This statement allows you to define the name of the procedure, input parameters, and the SQL code that makes up the procedure's logic. Stored procedures can accept parameters, execute SQL statements, and return results.

```sql
DELIMITER //

-- Example stored procedure with parameter
CREATE PROCEDURE GetEmployeeByDepartment(IN deptName VARCHAR(50))
BEGIN
    SELECT * FROM employees WHERE department = deptName;
END;
//

DELIMITER ;
 ```
#### Removing Stored Procedures:
If you no longer need a stored procedure, you can use the DROP PROCEDURE statement to remove it from the database. This ensures that the stored procedure and its associated logic are no longer available for execution.

```sql
-- Example to remove a stored procedure
DROP PROCEDURE MyProcedure;

 ```
#### Modifying Stored Procedures:
You can modify an existing stored procedure using the ALTER PROCEDURE statement. This allows you to change the procedure's logic, parameters, and other attributes. Modifying a stored procedure is useful when you need to update its functionality without recreating it from scratch.

```sql
-- Example to modify a stored procedure
DELIMITER //

ALTER PROCEDURE GetEmployeeByDepartment(IN newDeptName VARCHAR(50))
BEGIN
    SELECT * FROM employees WHERE department = newDeptName;
END;
//

DELIMITER ;

 ```
#### Listing Stored Procedures:
You can list the stored procedures in a MySQL database using the SHOW PROCEDURE STATUS statement:
```sql
SHOW PROCEDURE STATUS;
```
This statement will provide information about the stored procedures in the current database, including their names, types, and creation/modification timestamps

#### Variables
Variables are used to store temporary data within a stored procedure. They can be declared and assigned values for use in the procedure's logic:
```sql
DELIMITER //

CREATE PROCEDURE CalculateTotalSalary()
BEGIN
    DECLARE total DECIMAL(10, 2);
    
    SELECT SUM(salary) INTO total
    FROM employees;
    
    SELECT total;
END;
//

DELIMITER ;
 ```
 In this example, the total variable is declared and assigned the sum of all employee salaries.


#### Parameters
Parameters allow you to pass values to a stored procedure when calling it. They provide dynamic behavior for the procedure:


```sql
DELIMITER //

CREATE PROCEDURE GetEmployeeBySalaryRange(IN minSalary DECIMAL(10, 2), IN maxSalary DECIMAL(10, 2))
BEGIN
    SELECT * FROM employees WHERE salary BETWEEN minSalary AND maxSalary;
END;
//

DELIMITER ;

 ```
 In this example, the stored procedure accepts two input parameters (minSalary and maxSalary) to retrieve employees within a specified salary range.
 
</details> 

## <span style="color:darkblue; font-size:30px;">2. Conditional Statements</span> 

<details>



</details> 

## <span style="color:darkblue; font-size:30px;">3. Loops</span> 
<details>

</details> 

## <span style="color:darkblue; font-size:30px;">4. Error Handling</span> 
<details>

</details> 


## <span style="color:darkblue; font-size:30px;">5. Loops</span> 
<details>

</details> 

## <span style="color:darkblue; font-size:30px;">6. Stored Functions</span> 
<details>

</details> 

## <span style="color:darkblue; font-size:30px;">7. Stored Program Security</span> 
<details>

</details> 