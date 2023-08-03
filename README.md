# $${\color{green}Introduction}$$

## 1. What is a Database?

A database is a structured collection of data that is organized and managed to provide efficient retrieval and manipulation of information. It serves as a reliable and central repository for storing data in various forms, such as text, numbers, images, and more. Databases are essential components of modern computing, powering a wide range of applications and systems across industries.

## 2. Importance of Databases

Databases play a crucial role in managing and accessing large volumes of data efficiently. They offer several benefits that make them indispensable for modern applications:

- **Data Organization**: Databases provide a structured approach to organizing data, allowing easy categorization and storage of information.

- **Data Integrity**: With the use of constraints and validations, databases ensure that data remains accurate and consistent, reducing the risk of errors and discrepancies.

- **Data Security**: Databases offer security features to control access to sensitive information, protecting data from unauthorized users.

- **Data Scalability**: As data volumes grow, databases can scale to handle increasing loads, ensuring optimal performance.

- **Data Retrieval**: Databases support querying and filtering data, enabling quick and precise retrieval of information.

## 3. Basic Structure of a Database

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

# $${\color{green}Installation}$$
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

# $${\color{green}MYSQL}$$

# 1. Introduction to MySQL

## 1. What is MySQL?

MySQL is a fast, reliable, and scalable RDBMS that allows you to efficiently store, manage, and retrieve vast amounts of data. It is widely used in various applications, ranging from small web projects to large enterprise-level systems. MySQL is known for its exceptional performance, robustness, and ease of use, making it a top choice for developers and businesses alike.

## 2. Why Use MySQL?

MySQL offers several key advantages that make it stand out among other database management systems:

- **Open Source**: MySQL is an open-source software, meaning it is freely available for use, distribution, and modification. This lowers the total cost of ownership and allows for community contributions.

- **Ease of Use**: With its straightforward installation and user-friendly interface, MySQL is accessible to both beginners and experienced developers.

- **High Performance**: MySQL is optimized for speed and efficiency, ensuring rapid data processing and query execution even in high-traffic environments.

- **Scalability**: As your data grows, MySQL can easily scale to meet your increasing demands, providing a seamless experience for your users.

- **Flexibility**: MySQL supports various data types, indexing options, and storage engines, allowing you to tailor the database to your specific needs.

- **Robust Security**: MySQL offers strong security features, including encryption, user authentication, and access control, ensuring the protection of your sensitive data.

## 3. How to Install MySQL on Ubuntu

MySQL is a popular open-source Relational Database Management System (RDBMS) used to store and manage data efficiently. This tutorial will guide you through the process of installing MySQL on Ubuntu.

### Step 1: Update Package List

Open a terminal (Ctrl + Alt + T) and update the package list to ensure you have the latest information about available packages:

```sudo apt update```

### Step 2: Install MySQL Server

To install the MySQL server, use the following command:

``` sudo apt install mysql-server```

During the installation, you will be prompted to set a password for the MySQL root user. Choose a strong password and remember it, as you will need it later for administrative tasks.

### Step 3: Start and Enable MySQL

Start the MySQL service and enable it to start automatically at system boot:

```sudo systemctl start mysql``` 
```sudo systemctl enable mysql ```

### Step 4: Check MySQL Status

Verify that MySQL is running:
```sudo systemctl status mysql```

If everything is set up correctly, you should see "active (running)" in the output.

### Step 5: Secure MySQL Installation

MySQL comes with a security script to improve the installation's security. Run it with the following command:
``` 
sudo mysql_secure_installation
```

The script will prompt you to review and improve the MySQL security settings. Follow the on-screen instructions to set a secure password policy, remove anonymous users, disallow root login remotely, and remove the test database.

### Step 6: Access MySQL Shell

To access the MySQL shell, use the following command and enter your MySQL root password when prompted:

``` 
sudo mysql -u root -p
```

You should now be in the MySQL shell, where you can start working with databases and execute SQL queries.


# 2. Managing Databases
## 1. Create Database

In MySQL, the "CREATE DATABASE" command is used to create a new database within the MySQL server. A database is a structured collection of data that stores information in tables, columns, and rows. The "CREATE DATABASE" command is essential for setting up a new database where you can store and manage your data efficiently.

### Syntax

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
## 2. Select Database

In MySQL, the `USE` statement is used to select a specific database within the MySQL server. Once a database is selected using the `USE` statement, any subsequent SQL queries will be executed in the context of that database.

### Syntax

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
## 3. Drop Database

In MySQL, the `DROP DATABASE` command is used to permanently delete an existing database from the MySQL server. This command will remove all the tables, data, and other objects associated with the specified database. It is important to exercise caution while using the `DROP DATABASE` command, as it is irreversible and can lead to data loss.

### Syntax

The syntax for dropping a database in MySQL is as follows:

```sql
DROP DATABASE [IF EXISTS] database_name;
```

`IF EXISTS` is an optional clause. If specified, it allows the DROP DATABASE command to execute successfully even if the specified database does not exist. If the database does not exist and this clause is not used, MySQL will return an error.

**Caution**

As mentioned earlier, the DROP DATABASE command is irreversible and will delete all data in the specified database. It is crucial to double-check the database name before executing this command to avoid unintended data loss.

# 3. MySQL Data Manipulation
## 1. Querying Data
### SELECT

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
## 2. Sorting Data
### ORDER BY

The ORDER BY clause is used to sort the result set in ascending or descending order based on one or more columns.
Syntax:
```sql
SELECT column1, column2, ... FROM table_name ORDER BY column1 ASC|DESC, column2 ASC|DESC, ...;
```

## 3. Filtering data

### WHERE

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

### SELECT DISTINCT

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

### AND

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

### OR

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


### IN

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



### BETWEEN

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

### LIKE

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

### NOT IN
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

### LIMIT
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

### IS NULL
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

## 4. Joing Tables

### Aliases
Table and column aliases are used in SQL to provide temporary or alternative names for tables and columns in a query. They are helpful when you need to simplify the query syntax, create more readable and concise code, or deal with self-joins and subqueries.

```sql
Table :

SELECT emp_name, emp_age FROM employees AS e;

Column:
SELECT column_name AS alias_name FROM table_name;


employees table
---------------------------------
| emp_id | emp_name | emp_age |
---------------------------------
|  1     | John     | 30      |
|  2     | Sarah    | 28      |
|  3     | Michael  | 35      |
---------------------------------
-- Now, let's use a table alias e for the employees table and retrieve the employee names and ages:

SELECT e.emp_name, e.emp_age FROM employees AS e;

-- In this example, we used the AS keyword to give the employees table an alias e. Throughout the query, we referred to the table as e, so e.emp_name represents the emp_name column from the employees table.
-----------------
| emp_name | emp_age |
-----------------
| John     | 30      |
| Sarah    | 28      |
| Michael  | 35      |
-----------------

-- Now, let's retrieve the employee names along with their ages in months, using a column alias:

SELECT emp_name AS full_name, emp_age * 12 AS age_in_months FROM employees;

--In this example, we used the AS keyword to give the emp_name column an alias full_name, and we gave the calculation emp_age * 12 an alias age_in_months. The result set displays the column names as full_name and age_in_months.
---------------------------
| full_name | age_in_months |
---------------------------
| John      | 360           |
| Sarah     | 336           |
| Michael   | 420           |
---------------------------

```