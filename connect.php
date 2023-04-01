<?php
$firstname = $_POST['fname'];
$lastname = $_POST['lname'];
$password = $_POST['pass'];
$email = $_POST['email'];
$gender = $_POST['gender'];

//Database connection
$conn = new mysqli('localhost','root','','students_record');
if($conn -> connect_error)
{
    die('Connection Failed' .$conn -> connect_error);
}
else{
    $stmt = $conn -> prepare("INSERT INTO students(FirstName, LastName, RollNo, Email, Gender) VALUES(?, ?, ?, ?, ?)");
    $stmt->bind_param("ssiss", $firstname, $lastname, $password, $email, $gender);
    $stmt -> execute();
    $stmt -> store_result();
    echo "registration succesfully....";
    $stmt -> close();
    $conn -> close();
}
?>