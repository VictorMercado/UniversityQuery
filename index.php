<!DOCTYPE html>
<html>
<head>
    <title>My PHP Website</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Welcome to my PHP Website!</h1>
    <p>Here's some content for my website.</p>
    <?php
        // This is a PHP comment
        $variable = "This is a PHP variable.";
        echo "<p>$variable</p>";
    ?>

    <h1>For Professors</h1>
    <h2>Enter Professor's SSN</h2>

    <form action="professor.php" method="post">
        <label for="professorSSN">Professor's SSN:</label>
        <input type="text" id="professorSSN" name="professorSSN" required>
        <br><br>
        <input type="submit" value="Submit">
    </form>
    <br><br>
    <h2>Enter Course Number and Section Number</h2>
    <form action="course.php" method="post">
        <label for="CourseNo">Course Number:</label>
        <input type="text" id="CourseNo" name="CourseNo" required>
        <label for="SectionNo">Section Number:</label>
        <input type="text" id="SectionNo" name="SectionNo" required>
        <br><br>
        <input type="submit" value="Submit">
    </form>
    <br>
    <br>
    <h1>For Students</h1>
    <h2>Enter your CWID</h2>
    <form action="student.php" method="post">
        <label for="CWIDNo">CWID Number:</label>
        <input type="text" id="CWIDNo" name="CWIDNo" required>
        <br><br>
        <input type="submit" value="Submit">
    </form>
    <br><br>
    <h2>Enter Course Number</h2>
    <form action="section.php" method="post">
        <label for="CourseNo">Course Number:</label>
        <input type="text" id="CourseNo" name="CourseNo" required>
        <br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>