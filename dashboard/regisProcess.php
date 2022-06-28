<?php
    include "connection.php";

        $firstName = $_POST["firstName"];
        $lastName = $_POST["lastName"];
        $username = $_POST["username"];
        $password = md5($_POST["password"]);
        $email = $_POST["email"];
        $level = $_POST["level"];

        $query = "INSERT INTO user (firstName, lastName, username, password, email, level) VALUE('$firstName','$lastName','$username','$password','$email', '$level')";

        if(mysqli_query($connect, $query)){
            header("Location:../dashboard/loginForm.php");
        }else{
            echo "Registration failed , please try again!<br>" . mysqli_error($connect);
        }
    
    mysqli_close($connect);
?>