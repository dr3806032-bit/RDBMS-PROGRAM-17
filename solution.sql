-- Create Database
CREATE DATABASE deepakDB;

-- Use Database
USE deepakDB;

-- Create Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT
);

-- Create Procedure
DELIMITER //

CREATE PROCEDURE InsertStudent(
    IN p_StudentID INT,
    IN p_StudentName VARCHAR(50),
    IN p_DepartmentID INT
)
BEGIN
    INSERT INTO Student
    (StudentID, StudentName, DepartmentID)
    VALUES
    (p_StudentID, p_StudentName, p_DepartmentID);
END //

DELIMITER ;

-- Call Procedure
CALL InsertStudent(1001, 'Arun', 101);

-- Display Records
SELECT * FROM Student;

