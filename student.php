<?php
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the professor's SSN from the form
    $CWIDNo = $_POST["CWIDNo"];

    // Include the function from the previous example
    include "controllers.php"; // Replace with the actual filename

    ob_start();
    // Call the function with the provided SSN
    getClassInformationForProfessor($CWIDNo);
    $output = ob_get_clean();

    // Display the output
    echo "<h2>Classes for Student with CWID: $CWIDNo</h2>";
    echo $output;
}
?>