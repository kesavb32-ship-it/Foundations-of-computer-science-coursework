-- Task 3: Database Normalization and SQL Implementation

-- Step 1: Create Database
CREATE DATABASE college_db;
USE college_db;

-- Step 2: Create Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Email VARCHAR(100)
);

-- Step 3: Create Club Table
CREATE TABLE Club (
    ClubID INT PRIMARY KEY,
    ClubName VARCHAR(100),
    ClubRoom VARCHAR(50),
    ClubMentor VARCHAR(100)
);

-- Step 4: Create Membership Table
CREATE TABLE Membership (
    MembershipID INT PRIMARY KEY,
    StudentID INT,
    ClubID INT,
    JoinDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ClubID) REFERENCES Club(ClubID)
);

-- Step 5: Insert Data into Student Table
INSERT INTO Student VALUES
(1,'Asha','asha@email.com'),
(2,'Bikash','bikash@email.com'),
(3,'Nisha','nisha@email.com'),
(4,'Rohan','rohan@email.com'),
(5,'Suman','suman@email.com'),
(6,'Pooja','pooja@email.com'),
(7,'Aman','aman@email.com');

-- Step 6: Insert Data into Club Table
INSERT INTO Club VALUES
(1,'Music Club','R101','Mr. Raman'),
(2,'Sports Club','R202','Ms. Sita'),
(3,'Drama Club','R303','Mr. Kiran'),
(4,'Coding Club','Lab1','Mr. Anil');

-- Step 7: Insert Data into Membership Table
INSERT INTO Membership VALUES
(1,1,1,'2024-01-10'),
(2,2,2,'2024-01-12'),
(3,1,2,'2024-01-15'),
(4,3,1,'2024-01-20'),
(5,4,3,'2024-01-18'),
(6,5,1,'2024-01-22'),
(7,2,3,'2024-01-25'),
(8,6,2,'2024-01-27'),
(9,3,4,'2024-01-28'),
(10,7,4,'2024-01-30');

-- Step 8: SQL JOIN Query
SELECT s.StudentName, c.ClubName, m.JoinDate
FROM Membership m
JOIN Student s ON m.StudentID = s.StudentID
JOIN Club c ON m.ClubID = c.ClubID;
