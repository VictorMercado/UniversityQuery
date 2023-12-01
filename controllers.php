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

    $sql = "SELECT Title
            FROM Course
            WHERE CourseID = $courseNumber";
    $courseTitle = $conn->query($sql);

    // Check if there are results
    if ($result->num_rows > 0) {
        // Output data for each row
        $title = $courseTitle->fetch_assoc();
        echo "<h2>Course Title: {$title["Title"]}</h2>";
        echo "<table border='1'>
                <tr>
                    <th>Grade</th>
                    <th>Count</th>
                </tr>";
        while ($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>{$row["Grade"]}</td>
                    <td>{$row["Count"]}</td>
                </tr>";
            // echo "Grade: " . $row["Grade"] . " Count: " . $row["Count"] . "<br>";
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
    $sql = "SELECT
                *
            FROM
                Enrollment E
            JOIN
                Course C ON E.CourseID = C.CourseID
            WHERE
                E.StudentCWID = '$cwidNo'";

    $result = $conn->query($sql);

    // Check if there are results
    // Check if there are results
    if ($result->num_rows > 0) {
        // Display the result in HTML
        echo "<table border='1'>
                <tr>
                    <th>Course ID</th>
                    <th>Course Name</th>
                    <th>Grade</th>
                </tr>";

        // Fetch data and output HTML
        while ($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>{$row['CourseID']}</td>
                    <td>{$row['Title']}</td>
                    <td>{$row['Grade']}</td>
                </tr>";
        }

        echo "</table>";
    } else {
        // Display a message if no results found
        echo "No courses found for the student.";
    }

    // Close connection
    $conn->close();
}

function getSectionsWithCourse($CourseNo) {
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
    $sql = "SELECT
                S.SectionNumber,
                S.CourseID,
                S.Classroom,
                S.MeetingDays,
                S.StartTime,
                S.EndTime,
                COUNT(E.StudentCWID) AS NumStudentsEnrolled
            FROM
                Section S
            LEFT JOIN
                Enrollment E ON S.SectionNumber = E.SectionNumber AND S.CourseID = E.CourseID
            WHERE
                S.CourseID = $CourseNo
            GROUP BY
                S.SectionNumber, S.CourseID, S.Classroom, S.MeetingDays, S.StartTime, S.EndTime;
            ";

    $result = $conn->query($sql);

    // Check if there are results
    if ($result->num_rows > 0) {
        // Print table header
        echo "<table border='1'>
                <tr>
                    <th>Section Number</th>
                    <th>Course ID</th>
                    <th>Classroom</th>
                    <th>Meeting Days</th>
                    <th>Start Time</th>
                    <th>End Time</th>
                    <th>Num Students Enrolled</th>
                </tr>";

        // Output data of each row
        while ($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>{$row['SectionNumber']}</td>
                    <td>{$row['CourseID']}</td>
                    <td>{$row['Classroom']}</td>
                    <td>{$row['MeetingDays']}</td>
                    <td>{$row['StartTime']}</td>
                    <td>{$row['EndTime']}</td>
                    <td>{$row['NumStudentsEnrolled']}</td>
                </tr>";
        }

        // Close table
        echo "</table>";
    } else {
        echo "0 results";
    }

    // Close connection
    $conn->close();
}

?>

