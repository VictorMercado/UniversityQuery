-- Example INSERT statements for the Professor table

INSERT INTO Professor (SSN, FirstName, LastName, StreetAddress, City, State, ZipCode, Sex, Title, Salary, AreaCode, PhoneNumber)
VALUES ('SSN1', 'John', 'Doe', '123 Main St', 'City1', 'CA', '12345', 'M', 'Professor', 80000.00, '555', '1234567');

INSERT INTO Professor (SSN, FirstName, LastName, StreetAddress, City, State, ZipCode, Sex, Title, Salary, AreaCode, PhoneNumber)
VALUES ('SSN2', 'Jane', 'Smith', '456 Oak St', 'City2', 'CA', '56789', 'F', 'Associate Professor', 65000.00, '555', '2345678');

INSERT INTO Professor (SSN, FirstName, LastName, StreetAddress, City, State, ZipCode, Sex, Title, Salary, AreaCode, PhoneNumber)
VALUES ('SSN3', 'Bob', 'Johnson', '789 Pine St', 'City3', 'CA', '98765', 'M', 'Assistant Professor', 50000.00, '555', '3456789');


-- Example INSERT statements for the Department table

INSERT INTO Department (DepartmentID, DepartmentName, Telephone, OfficeLocation, ChairpersonID)
VALUES (1, 'Computer Science', '555-1111', 'Building A, Room 101', 'SSN1');

INSERT INTO Department (DepartmentID, DepartmentName, Telephone, OfficeLocation, ChairpersonID)
VALUES (2, 'Mathematics', '555-2222', 'Building B, Room 201', 'SSN2');

-- Example INSERT statements for the Student table

INSERT INTO Student (CWID, FirstName, LastName, Address, TelephoneNumber, MajorDepartmentID)
VALUES ('CWID1', 'John', 'Doe', '123 Main St', '555-1234', 1);

INSERT INTO Student (CWID, FirstName, LastName, Address, TelephoneNumber, MajorDepartmentID)
VALUES ('CWID2', 'Jane', 'Smith', '456 Oak St', '555-5678', 2);

INSERT INTO Student (CWID, FirstName, LastName, Address, TelephoneNumber, MajorDepartmentID)
VALUES ('CWID3', 'Bob', 'Johnson', '789 Pine St', '555-9876', 1);

INSERT INTO Student (CWID, FirstName, LastName, Address, TelephoneNumber, MajorDepartmentID)
VALUES ('CWID4', 'Alice', 'Williams', '321 Elm St', '555-4321', 1);

INSERT INTO Student (CWID, FirstName, LastName, Address, TelephoneNumber, MajorDepartmentID)
VALUES ('CWID5', 'Charlie', 'Brown', '654 Birch St', '555-8765', 2);

INSERT INTO Student (CWID, FirstName, LastName, Address, TelephoneNumber, MajorDepartmentID)
VALUES ('CWID6', 'Eva', 'Anderson', '987 Cedar St', '555-3456', 1);

INSERT INTO Student (CWID, FirstName, LastName, Address, TelephoneNumber, MajorDepartmentID)
VALUES ('CWID7', 'Michael', 'Lee', '234 Maple St', '555-6543', 2);

INSERT INTO Student (CWID, FirstName, LastName, Address, TelephoneNumber, MajorDepartmentID)
VALUES ('CWID8', 'Sara', 'Garcia', '567 Walnut St', '555-7890', 2);

-- Example INSERT statements for the Course table

INSERT INTO Course (CourseID, Title, Textbook, Units, DepartmentID)
VALUES (1, 'Introduction to Programming', 'Programming Textbook 101', 3, 1);

INSERT INTO Course (CourseID, Title, Textbook, Units, DepartmentID)
VALUES (2, 'Calculus I', 'Calculus Textbook A', 4, 2);

INSERT INTO Course (CourseID, Title, Textbook, Units, DepartmentID)
VALUES (3, 'Linear Algebra', 'Linear Algebra Textbook B', 3, 2);

INSERT INTO Course (CourseID, Title, Textbook, Units, DepartmentID)
VALUES (4, 'Database Management', 'Database Textbook 202', 3, 1);

-- Example INSERT statements for the Section table

INSERT INTO Section (SectionNumber, CourseID, Classroom, Seats, MeetingDays, StartTime, EndTime, ProfessorID)
VALUES (1, 1, 'Room A101', 30, 'MWF', '08:00:00', '09:30:00', 'SSN1');

INSERT INTO Section (SectionNumber, CourseID, Classroom, Seats, MeetingDays, StartTime, EndTime, ProfessorID)
VALUES (2, 1, 'Room B201', 25, 'TR', '10:00:00', '11:30:00', 'SSN2');

INSERT INTO Section (SectionNumber, CourseID, Classroom, Seats, MeetingDays, StartTime, EndTime, ProfessorID)
VALUES (1, 2, 'Room C301', 40, 'MWF', '13:00:00', '14:30:00', 'SSN3');

INSERT INTO Section (SectionNumber, CourseID, Classroom, Seats, MeetingDays, StartTime, EndTime, ProfessorID)
VALUES (2, 2, 'Room A102', 35, 'TR', '09:00:00', '10:30:00', 'SSN1');

INSERT INTO Section (SectionNumber, CourseID, Classroom, Seats, MeetingDays, StartTime, EndTime, ProfessorID)
VALUES (1, 3, 'Room B202', 28, 'MWF', '07:00:00', '08:30:00', 'SSN2');

INSERT INTO Section (SectionNumber, CourseID, Classroom, Seats, MeetingDays, StartTime, EndTime, ProfessorID)
VALUES (2, 3, 'Room C302', 32, 'TR', '13:00:00', '14:30:00', 'SSN3');

INSERT INTO Section (SectionNumber, CourseID, Classroom, Seats, MeetingDays, StartTime, EndTime, ProfessorID)
VALUES (1, 4, 'Room D202', 28, 'MWF', '10:00:00', '11:30:00', 'SSN1');

INSERT INTO Section (SectionNumber, CourseID, Classroom, Seats, MeetingDays, StartTime, EndTime, ProfessorID)
VALUES (2, 4, 'Room D302', 32, 'TR', '11:00:00', '12:30:00', 'SSN3');

-- Example INSERT statements for the Enrollment table

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID1', 1, 1, 'A');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID1', 1, 2, 'A');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID1', 2, 3, 'A');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID1', 2, 4, 'A');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID2', 1, 1, 'B+');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID2', 2, 3, 'B+');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID2', 2, 2, 'C+');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID2', 2, 4, 'A+');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID3', 2, 4, 'A-');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID3', 1, 3, 'A');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID3', 1, 2, 'B-');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID3', 1, 1, 'B+');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID4', 2, 4, 'B');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID4', 1, 3, 'B');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID5', 1, 1, 'A');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID5', 1, 2, 'A');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID6', 2, 4, 'C');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID6', 1, 3, 'C');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID7', 2, 3, 'A+');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID7', 1, 4, 'A+');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID8', 1, 1, 'B-');

INSERT INTO Enrollment (StudentCWID, SectionNumber, CourseID, Grade)
VALUES ('CWID8', 2, 2, 'B-');