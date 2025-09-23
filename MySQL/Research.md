# Database & SQL Basics

---

##  What is a Database and Why Does it Exist?
A **database** is a structured collection of data, typically stored electronically in a computer system.  
Think of it as a **digital filing cabinet** that's far more organized and powerful than a simple spreadsheet or folder full of documents.  

It’s not just the data itself, but also the software, known as a **Database Management System (DBMS)**, that allows users and applications to interact with the data efficiently.  
The most common type is a **relational database**, which organizes data into **tables** with **rows and columns**.

 Databases exist to solve problems of managing **large, complex, and interrelated data**. Before databases, data was often stored in separate files, leading to inconsistency and inefficiency.

 [Reference](https://www.coursera.org/articles/what-is-database)

---

## What is SQL?
**SQL (Structured Query Language)** is a **special-purpose programming language** used to manage and manipulate data in a **relational database**.  

[Reference](https://aws.amazon.com/what-is/sql/#ams#what-isc1#pattern-data)

---

## Top 5 Most Popular Databases Today
1. **MySQL**  
2. **Microsoft SQL Server**  
3. **PostgreSQL**  
4. **MongoDB**  
5. **Oracle Database**

---

## What is RDBMS?
A **Relational Database Management System (RDBMS)** is a software program that allows you to **create, manage, and interact** with a relational database.  
It is the **engine behind the database**, ensuring that data is stored, retrieved, and managed **efficiently and securely**.  

 [Reference](https://www.techtarget.com/searchdatamanagement/definition/RDBMS-relational-database-management-system#:~:text=Jun%2006%2C%202024-,What%20is%20an%20RDBMS%20(relational%20database%20management%20system)%3F,interact%20with%20a%20relational%20database.)

---

## DBMS vs RDBMS
- **DBMS (Database Management System)** → Any software that manages a database.  
- **RDBMS (Relational DBMS)** → A special type of DBMS that organizes data in **tables with relationships**.  

 All **RDBMSs** are **DBMSs**  
 But not all **DBMSs** are **RDBMSs**  

 [Reference](https://www.tutorialspoint.com/difference-between-dbms-and-rdbms#:~:text=In%20contrast%2C%20a%20DBMS%20may,not%20all%20DBMSs%20are%20RDBMSs.)

---

## Naming Conventions
When naming tables, columns, or databases, it’s important to follow consistent conventions:

- **Case Sensitivity**:
  - `snake_case` → e.g., `first_name`
  - `PascalCase` → e.g., `FirstName`
  - `camelCase` → e.g., `firstName`

- **Separators**:
  - **Underscores (`_`)** → used in `snake_case`
  - **No Separators** → used in `PascalCase` & `camelCase`

 [Reference](https://www.ibm.com/docs/en/db2-for-zos/12.0.0?topic=elements-naming-conventions)

---
