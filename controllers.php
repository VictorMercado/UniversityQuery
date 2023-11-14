<?php
function getClassInformationForProfessor($professorSSN) {
    // Replace with your database connection details
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "university";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Query to retrieve class information
    $sql = "SELECT Course.Title, Section.Classroom, Section.MeetingDays, Section.StartTime, Section.EndTime
            FROM Professor
            JOIN Section ON Professor.SSN = Section.ProfessorID
            JOIN Course ON Section.CourseID = Course.CourseID
            WHERE Professor.SSN = '$professorSSN'";

    $result = $conn->query($sql);

    // Check if there are results
    if ($result->num_rows > 0) {
        // Output data for each row
        while ($row = $result->fetch_assoc()) {
            echo "Title: " . $row["Title"] . "<br>";
            echo "Classroom: " . $row["Classroom"] . "<br>";
            echo "Meeting Days: " . $row["MeetingDays"] . "<br>";
            echo "Time: " . $row["StartTime"] . " - " . $row["EndTime"] . "<br><br>";
        }
    } else {
        echo "No classes found for the professor with SSN $professorSSN";
    }

    // Close connection
    $conn->close();
}

function countGradesForSection($courseNumber, $sectionNumber) {
    // Replace with your database connection details
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "university";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Query to count grades
    $sql = "SELECT Grade, COUNT(*) as Count
            FROM Enrollment
            WHERE CourseID = (SELECT CourseID FROM Section WHERE CourseID = $courseNumber AND SectionNumber = $sectionNumber)
              AND SectionNumber = $sectionNumber
            GROUP BY Grade";

    $result = $conn->query($sql);

    // Check if there are results
    if ($result->num_rows > 0) {
        // Output data for each row
        while ($row = $result->fetch_assoc()) {
            echo "Grade: " . $row["Grade"] . " Count: " . $row["Count"] . "<br>";
        }
    } else {
        echo "No grades found for Course $courseNumber, Section $sectionNumber";
    }

    // Close connection
    $conn->close();
}

function studentClasses($cwidNo) {
    // Replace with your database connection details
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "university";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Query to count grades
    $sql = "SELECT *
            FROM Enrollment
            WHERE StudentCWID = $cwidNo";

    $result = $conn->query($sql);

    // Check if there are results
    if ($result->num_rows > 0) {
        // Output data for each row
        
        while ($row = $result->fetch_assoc()) {
            echo "Student CWID: " . $row["StudentCWID"] . " Count: " . $row["Count"] . "<br>";
        }
    } else {
        echo "No grades found for Course $courseNumber, Section $sectionNumber";
    }

    // Close connection
    $conn->close();
}

?>