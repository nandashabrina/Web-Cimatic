<?php
    session_start();
?>
<?php
    include "connection.php";

    $username = $_POST["username"];
    $password = md5($_POST["password"]);

    $query = "SELECT * FROM user WHERE username='$username' && password='$password'";
    $result = mysqli_query($connect, $query);
    $row = mysqli_fetch_array($result);
    $id = $row['id'];
    if($row['level'] == "user"){
        header("Location:../home.php");
        $_SESSION["user"] = $id;
        $_SESSION["username"] = $username;
    }
    else if($row['level'] == "admin"){
        header("Location:../dashboard/index.php");
        $_SESSION["user"] = $id;
        $_SESSION["username"] = $username;
    }
    else{
        header("Location:../dashboard/loginForm.php");
    }
    mysqli_close($connect);
?>