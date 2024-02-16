CREATE TABLE Students (
    SID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Major VARCHAR(255),
    UNIQUE(Name)
);

-- Create Projects table
CREATE TABLE Projects (
    PID INT PRIMARY KEY,
    P_Name VARCHAR(255) NOT NULL,
    UNIQUE(P_Name)
);

-- Create Courses table
CREATE TABLE Courses (
    CID INT PRIMARY KEY,
    C_Name VARCHAR(255) NOT NULL,
    UNIQUE(C_Name)
);

-- Create Members table
CREATE TABLE Members (
    PID INT,
    SID INT,
    PRIMARY KEY (PID, SID),
    FOREIGN KEY (PID) REFERENCES Projects(PID),
    FOREIGN KEY (SID) REFERENCES Students(SID)
);

-- Create Enrollments table
CREATE TABLE Enrollments (
    CID INT,
    SID INT,
    PRIMARY KEY (CID, SID),
    FOREIGN KEY (CID) REFERENCES Courses(CID),
    FOREIGN KEY (SID) REFERENCES Students(SID)
);


-- Insert values into Students table
INSERT INTO Students (SID, Name, Major) VALUES
(1, 'John Doe', 'CS'),
(2, 'Jane Smith', 'Math'),
(3, 'Bob Johnson', 'CS'),
(4, 'Alice Brown', NULL),
(5, 'Charlie Davis', 'Physics'),
(6, 'Eva White', 'CS'),
(7, 'David Black', 'Chemistry'),
(8, 'Grace Green', NULL),
(9, 'Frank Gray', 'EECS'),
(10, 'Helen Red', 'Physics');


-- Insert values into Projects table
INSERT INTO Projects (PID, P_Name) VALUES
(101, 'ProjectA'),
(102, 'ProjectB'),
(103, 'ProjectC'),
(104, 'ProjectD'),
(105, 'ProjectE'),
(106, 'ProjectF');


-- Insert values into Courses table
INSERT INTO Courses (CID, C_Name) VALUES
(501, 'Computer Science 101'),
(502, 'Mathematics 201'),
(503, 'Physics 301'),
(504,'EECS482'),
(505, 'EECS483'),
(506, 'EECS484'),
(507,'EECS485'),
(508, 'EECS280'),
(510, 'EECS442'),
(509, 'EECS492'),
(511, 'EECS286'),
(512, 'EECS281');

-- Insert values into Members table
INSERT INTO Members (PID, SID) VALUES
(101, 1),
(101, 2),
(102, 3),
(103, 4),
(103, 5),
(101, 6),
(102, 7),
(103, 8),
(104, 9),
(105, 10),
(104, 6),
(104, 7),
(104, 8),
(105, 8),
(105, 9),
(106, 10);


INSERT INTO Enrollments (CID, SID) VALUES
(501,1),
(501,2),
(502,3),
(502,4),
(503,5),
(504,2),
(505,3),
(506,4),
(507,5),
(508,2),
(509,3),
(512,4),
(511,5),
(507,2),
(510,3),
(509,4),
(512,5),
(506,2),
(504,8),
(504,6),
(508,8),
(505,7),
(506,8),
(507,8),
(508,10),
(504,7),
(505,8),
(506,9),
(507,10),
(508,6);


