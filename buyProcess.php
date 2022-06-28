<?php
    session_start();

    include "connection.php";
    $id = $_GET['id'];
    $idUser = $_SESSION["user"]; 
    $date = date("Y-m-d");
    $price = $_GET["price"];
    $link = $_GET["link"];
    $query = "INSERT INTO library (idFilm, idUser) VALUES ('$id','$idUser')";
    $query2 = "INSERT INTO pembelian (idUser, idFilm, tglBeli, harga) VALUES ('$idUser', '$id', '$date', '$price')";
    if(mysqli_query($connect, $query)){
        mysqli_query($connect, $query2);
        header('Location:home.php');     
    }else{
        header('Location:home.php');
    }
    mysqli_close($connect);
?>