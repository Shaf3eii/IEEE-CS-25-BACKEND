# 📘 Database & SQL Fundamentals

---

### 🔹 What is a Database and Why Does it Exist?
A **database** is an organized collection of data, typically stored electronically in a computer system. Think of it as a **digital filing cabinet**—but far more structured and efficient than simple spreadsheets or scattered files.

Databases are managed through a **Database Management System (DBMS)**, which provides tools to store, retrieve, and manipulate data securely and efficiently.

The main reason databases exist is to solve the challenges of handling large volumes of complex data. Before databases, information was stored in separate files, often leading to redundancy, inconsistency, and difficulty in accessing or updating data.

👉 The most widely used type today is the **Relational Database**, which organizes information into structured tables with rows and columns.

[Reference](https://www.coursera.org/articles/what-is-database)

---

### 🔹 What is SQL?
**SQL (Structured Query Language)** is the standard programming language used to **manage and manipulate data** in relational databases.  
It allows users to **insert, update, query, and delete** data efficiently.

[Reference](https://aws.amazon.com/what-is/sql/#ams#what-isc1#pattern-data)

---

### 🔹 Top 5 Databases in the World
1. **MySQL**  
2. **Microsoft SQL Server**  
3. **PostgreSQL**  
4. **MongoDB**  
5. **Oracle Database**

---

### 🔹 What is an RDBMS?
An **RDBMS (Relational Database Management System)** is specialized software that enables the creation, management, and interaction with relational databases.  
It is the **engine** behind the database, handling technical tasks like storage, indexing, security, and retrieval.

[Reference](https://www.techtarget.com/searchdatamanagement/definition/RDBMS-relational-database-management-system#:~:text=Jun%2006%2C%202024-,What%20is%20an%20RDBMS)

---

### 🔹 DBMS vs RDBMS
- **DBMS (Database Management System)**: A broad term for software that manages databases (structured or unstructured).  
- **RDBMS (Relational Database Management System)**: A type of DBMS that organizes data into tables with predefined relationships.

✅ Every RDBMS is a DBMS, but **not every DBMS is an RDBMS**.

[Reference](https://www.tutorialspoint.com/difference-between-dbms-and-rdbms#:~:text=In%20contrast%2C%20a%20DBMS%20may)

---

### 🔹 Naming Conventions
When naming database objects (tables, columns, etc.), consistency matters. Common practices include:

- **Case Styles**:  
  - `snake_case` → e.g., `first_name`  
  - `PascalCase` → e.g., `FirstName`  
  - `camelCase` → e.g., `firstName`

- **Separators**:  
  - Underscores (`_`) in snake case  
  - No separators in PascalCase or camelCase

[Reference](https://www.ibm.com/docs/en/db2-for-zos/12.0.0?topic=elements-naming-conventions)

---

### 🔹 Primary Keys vs Unique Keys
- **Primary Key**:  
  - A column (or set of columns) that uniquely identifies each row in a table.  
  - Only **one primary key** per table.  
  - Does **not allow NULLs or duplicates**.

- **Unique Key**:  
  - Also enforces uniqueness on a column.  
  - A table can have **multiple unique keys**.  
  - Allows **one NULL value**.

✅ A **Primary Key** is always unique, but a **Unique Key** is not necessarily a primary key.

[Reference](https://www.geeksforgeeks.org/dbms/difference-between-primary-key-and-unique-key/)

***

### 🔹 constraints in MySQL.
- Rules applied to columns in a table to limit the type of data that can be inserted, ensuring data accuracy and integrity.
	- **Common Constraints in MySQL:**
		- **`NOT NULL`**: This constraint ensures that a column cannot have a `NULL` (empty) value.
		- **`UNIQUE`**: This guarantees that all values in a column or a set of columns are different from one another.
		- **`PRIMARY KEY`**: A special type of constraint that uniquely identifies each record in a table. It is a combination of `NOT NULL` and `UNIQUE`.
		- **`FOREIGN KEY`**: A `FOREIGN KEY` is used to establish and enforce a link between two tables. It ensures that the value in a column (or set of columns) in one table matches a value in the `PRIMARY KEY` of another table.
		- **`CHECK`**: This constraint is used to ensure that a value in a column satisfies a specific condition.
		- **`DEFAULT`**: The `DEFAULT` constraint provides a default value for a column when no value is explicitly specified during an `INSERT` operation.
- [Reference](https://www.geeksforgeeks.org/dbms/dbms-integrity-constraints/)

***

### 🔹 Indexing in MySQL.
- Indexing in MySQL is a crucial technique for improving the performance of database queries. An index is a data structure that helps the database engine find rows more quickly. Think of an index like the index in the back of a book, instead of reading the entire book to find a specific topic, you can go to the index, find the topic and a page number, and then jump directly to the relevant page. Without an index, the database would have to perform a **full table scan**, which means checking every single row to find the data you're looking for.
- **How it Works:** When you create an index on one or more columns of a table, MySQL builds a separate, highly optimized data structure—typically a B-Tree—that stores the column values in a sorted order along with pointers to the corresponding rows in the table. . When you execute a query, the database can use this sorted index to quickly locate the rows that match your query conditions, significantly reducing the I/O operations required and speeding up the query.
- **Types of Indexes:**
	- **Primary Key Index:** This is a special index that is automatically created when you define a `PRIMARY KEY` on a column.
	- **Unique Index:** Similar to a primary key index, a unique index ensures that all values in the indexed column are unique.
	- **Normal Index:** Also known as a non-unique index, this is the most common type of index. It is used to speed up queries on columns that are frequently used in `WHERE` clauses or `JOIN` conditions.
	- **Full-Text Index:** This type of index is used for searching text data within columns. It allows you to perform fast, keyword-based searches on large text fields.
	- **Composite Index:** An index created on two or more columns. It's useful for queries that frequently filter data on multiple columns at once. The order of columns in a composite index is very important for performance.

[Reference](https://www.geeksforgeeks.org/dbms/indexing-in-databases-set-1/)

***

