CREATE TABLE Professor (
    SSN VARCHAR(11) PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    StreetAddress VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(2),
    ZipCode VARCHAR(10),
    Sex CHAR(1),
    Title VARCHAR(50),
    Salary DECIMAL(10, 2),
    AreaCode VARCHAR(5),
    PhoneNumber VARCHAR(10) NOT NULL
);

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    Telephone VARCHAR(20) NOT NULL,
    OfficeLocation VARCHAR(255) NOT NULL,
    ChairpersonID VARCHAR(11) NOT NULL,
    FOREIGN KEY (ChairpersonID) REFERENCES Professor(SSN) 
);

CREATE TABLE Student (
    CWID VARCHAR(15) PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    TelephoneNumber VARCHAR(20) NOT NULL,
    MajorDepartmentID INT NOT NULL,
    FOREIGN KEY (MajorDepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Minor (
    StudentCWID VARCHAR(15) NOT NULL,
    DepartmentID INT NOT NULL,
    PRIMARY KEY (StudentCWID, DepartmentID),
    FOREIGN KEY (StudentCWID) REFERENCES Student(CWID),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY NOT NULL,
    Title VARCHAR(255) NOT NULL,
    Textbook VARCHAR(255) NOT NULL,
    Units INT NOT NULL,
    DepartmentID INT NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Section (
    SectionNumber INT NOT NULL,
    CourseID INT NOT NULL,
    Classroom VARCHAR(50) NOT NULL, 
    Seats INT NOT NULL,
    MeetingDays VARCHAR(10) NOT NULL,
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL,
    ProfessorID VARCHAR(11) NOT NULL,
    PRIMARY KEY (SectionNumber, CourseID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (ProfessorID) REFERENCES Professor(SSN)
);

 CREATE TABLE Prerequisite (
    CourseID INT NOT NULL,
    PrerequisiteID INT NOT NULL,
    PRIMARY KEY (CourseID, PrerequisiteID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (PrerequisiteID) REFERENCES Course(CourseID)
);

CREATE TABLE Enrollment (
    StudentCWID VARCHAR(15) NOT NULL,
    SectionNumber INT NOT NULL,
    CourseID INT NOT NULL,
    Grade VARCHAR(3),
    PRIMARY KEY (StudentCWID, SectionNumber, CourseID),
    FOREIGN KEY (StudentCWID) REFERENCES Student(CWID),
    FOREIGN KEY (SectionNumber, CourseID) REFERENCES Section(SectionNumber, CourseID)
);