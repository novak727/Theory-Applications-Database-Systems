#CREATE DATABASE Primary_ForeignKey;
#USE Primary_ForeignKey;

#CREATE TABLE Student_Details(
#		Student_ID INT PRIMARY KEY,
#        Student_Name VARCHAR(30),
#        Student_Address VARCHAR(50)
#);

#INSERT INTO Student_Details (Student_ID, Student_Name, Student_Address)
#VALUES
#(1, 'John Smith', 'New York'),
#(2, 'Emma Brown', 'Los Angeles'),
#(3, 'Michael Lee', 'Chicago');

#SELECT * FROM Student_Details;

#CREATE TABLE Grades(
#		Student_ID INT,
#        Grade CHAR(1),
#        FOREIGN KEY (Student_ID) REFERENCES Student_Details(Student_ID)
#);

#INSERT INTO Grades (Student_ID, Grade)
#VALUES
#	(1, 'A'),
#    (2, 'B'),
#    (3, 'A');

#SELECT * FROM Grades;

# This should not work
#INSERT INTO Grades (Student_ID, Grade)
#VALUES
#	(4, 'F'),
#    (5, 'F');

#CREATE TABLE Student_Course(
#		ID INT,
#        CourseID VARCHAR(10),
#        Semester VARCHAR(15),
#        Grade CHAR(1),
#        PRIMARY KEY(ID, CourseID)
#);

#INSERT INTO Student_Course(ID, CourseID, Semester, Grade)
#VALUES
#	(101, 'CSE 101', 'Fall 2025', 'A'),
#    (101, 'MTH 101', 'Fall 2025', 'B'),
#    (102, 'CSE 101', 'Fall 2025', 'B'),
#    (103, 'CSE 101', 'Fall 2025', 'A');

SELECT * FROM Student_Course;