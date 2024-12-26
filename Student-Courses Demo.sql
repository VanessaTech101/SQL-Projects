# Create the database
CREATE DATABASE IF NOT EXISTS SchoolDB4;

# Use the database
USE SchoolDB4;

# Create the Students table
CREATE TABLE Students (
  id BIGINT AUTO_INCREMENT NOT NULL,  # Define primary key for Students table
  name VARCHAR(255) NOT NULL,         # Name of the student
  age BIGINT NOT NULL,                # Age of the student
  phone INT NOT NULL,                 # Phone number 
  PRIMARY KEY (id)                    # Corrected the primary key definition syntax
);

# Create the Courses table
CREATE TABLE Courses (
  id BIGINT AUTO_INCREMENT NOT NULL,  # Define primary key for Courses table
  name VARCHAR(255) NOT NULL,         # Name of the course
  price INT,                          # Price of the course 
  PRIMARY KEY (id)                    # Primary key for the Courses table
);

# Create the StudentCourses table
CREATE TABLE StudentCourses (
  StudentId BIGINT NOT NULL,          # Foreign key referencing Students table
  CourseId BIGINT NOT NULL,           # Foreign key referencing Courses table
  PRIMARY KEY (StudentId, CourseId),  # Composite primary key ensures unique combinations
  FOREIGN KEY (StudentId) REFERENCES Students(id),  # Enforce referential integrity for StudentId
  FOREIGN KEY (CourseId) REFERENCES Courses(id)     # Enforce referential integrity for CourseId
);

# Insert data into the Courses table
INSERT INTO Courses (name, price) VALUES ('ATB', 10000);  # Adding a course with id = 1
INSERT INTO Courses (name, price) VALUES ('CTC', 15000);  # Adding another course with id = 2

# Insert data into the Students table
INSERT INTO Students (name, age, phone) VALUES ('Aju', 32, 989829323);  # Add student with id = 1
INSERT INTO Students (name, age, phone) VALUES ('Ajim', 34, 829329323); # Add student with id = 2
INSERT INTO Students (name, age, phone) VALUES ('Pramod', 32, 239392323); # Add student with id = 3

# Insert data into the StudentCourses table
INSERT INTO StudentCourses (StudentId, CourseId) VALUES (1, 1);  # Link student 1 to course 1
INSERT INTO StudentCourses (StudentId, CourseId) VALUES (2, 1);  # Link student 2 to course 1
INSERT INTO StudentCourses (StudentId, CourseId) VALUES (3, 2);  # Link student 3 to course 2 

# Verify the data
SELECT * FROM Students;        # Display all students
SELECT * FROM Courses;         # Display all courses
SELECT * FROM StudentCourses;  # Display student-course relationships
