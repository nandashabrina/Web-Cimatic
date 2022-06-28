<?php
    session_start();

    include "connection.php";
    $id = $_GET['id'];
    $idUser = $_SESSION["user"];
    $query = "INSERT INTO wishlist (idFilm, idUser) VALUES ('$id','$idUser')";
    if(mysqli_query($connect, $query)){
        header('Location:home.php');        
    }else{
        header('Location:home.php');
    }
    mysqli_close($connect);
?>