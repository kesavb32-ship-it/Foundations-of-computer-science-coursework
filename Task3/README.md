# Task 3 – Database Normalization and SQL Implementation

## Overview
This task demonstrates database normalization and SQL implementation for a college club membership system. The aim is to reduce data redundancy, improve data accuracy, and organize the database efficiently.

The database was normalized from an **unnormalized table (UNF)** to **First Normal Form (1NF)**, **Second Normal Form (2NF)**, and **Third Normal Form (3NF)**. An **Entity Relationship (ER) diagram** was also created to illustrate the relationships between the entities.

---

# Database Normalization

The database was normalized into three main tables:

## Student Table
Stores information about students.

Attributes:
- StudentID (Primary Key)
- StudentName
- Email

## Club Table
Stores information about clubs.

Attributes:
- ClubID (Primary Key)
- ClubName
- ClubRoom
- ClubMentor

## Membership Table
Represents the relationship between students and clubs.

Attributes:
- MembershipID (Primary Key)
- StudentID (Foreign Key)
- ClubID (Foreign Key)
- JoinDate

This structure eliminates redundancy and ensures data consistency.

---

# Running MySQL Using Docker

The database was implemented using **MySQL running inside Docker containers**.

## Step 1 – Check Docker Installation

```bash
docker --version
```

If Docker is installed, it will display the Docker version.

---

## Step 2 – Pull MySQL Docker Image

```bash
docker pull mysql:8.0
```

This downloads the MySQL image from Docker Hub.

---

## Step 3 – Create and Run MySQL Container

```bash
docker run --name college-mysql \
-e MYSQL_ROOT_PASSWORD=root123 \
-e MYSQL_DATABASE=college_db \
-p 3306:3306 \
-d mysql:8.0
```

This command:
- Creates a container named **college-mysql**
- Sets the **root password**
- Creates the **college_db database**
- Runs MySQL in the background

---

## Step 4 – Access MySQL Terminal

```bash
docker exec -it college-mysql mysql -u root -p
```

Enter the password:

```
root123
```

You will then see the MySQL prompt:

```
mysql>
```

---

# SQL Database Implementation

## Step 1 – Select the Database

```sql
USE college_db;
```

---

## Step 2 – Create Student Table

```sql
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Email VARCHAR(100)
);
```

---

## Step 3 – Create Club Table

```sql
CREATE TABLE Club (
    ClubID INT PRIMARY KEY,
    ClubName VARCHAR(100),
    ClubRoom VARCHAR(50),
    ClubMentor VARCHAR(100)
);
```

---

## Step 4 – Create Membership Table

```sql
CREATE TABLE Membership (
    MembershipID INT PRIMARY KEY,
    StudentID INT,
    ClubID INT,
    JoinDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ClubID) REFERENCES Club(ClubID)
);
```

---

# Insert Sample Data

## Insert Student

```sql
INSERT INTO Student (StudentID, StudentName, Email)
VALUES (101, 'Ram Sharma', 'ram.sharma@email.com');
```

---

## Insert Club

```sql
INSERT INTO Club (ClubID, ClubName, ClubRoom, ClubMentor)
VALUES (201, 'Football Club', 'Room A1', 'Mr. Kiran');
```

---

## Insert Membership

```sql
INSERT INTO Membership (MembershipID, StudentID, ClubID, JoinDate)
VALUES (1, 101, 201, '2026-02-28');
```

---

# SQL JOIN Operation

The following query retrieves **student names, club names, and join dates**.

```sql
SELECT s.StudentName, c.ClubName, m.JoinDate
FROM Membership m
JOIN Student s ON m.StudentID = s.StudentID
JOIN Club c ON m.ClubID = c.ClubID;
```

This query combines data from multiple tables using **JOIN operations**.

---

# Screenshots

The `screenshots` folder contains visual evidence of the normalization and SQL execution.

- Unnormalized Table
- First Normal Form (1NF)
- Second Normal Form (2NF)
- Third Normal Form (3NF)
- ER Diagram
- SQL JOIN Query Output

---



# Conclusion

This task demonstrates how **database normalization improves data organization and reduces redundancy**. By structuring the database into separate tables and using **SQL JOIN operations**, meaningful information can be retrieved efficiently while maintaining data integrity.
