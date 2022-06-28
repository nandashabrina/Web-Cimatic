<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta set -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<?php
    session_start();

    include "connection.php";
    $id = $_GET['id'];
    $idUser = $_SESSION["user"]; 
    $date = date("Y-m-d");
    $price = $_GET["price"];
    $link = $_GET["link"];
    $query = "INSERT INTO penyewaan (idUser, idFilm, tglSewa, harga) VALUES ('$idUser', '$id', '$date', '$price')";
    if(mysqli_query($connect, $query)){
        $query3 = "DELETE FROM wishlist WHERE idUser = $idUser && idFilm = $id";
        mysqli_query($connect, $query3);
        $_SESSION["link"] = $link;
        header('Location:view.php');    
    }else{
        header('Location:home.php');
    }
    mysqli_close($connect);
?>

</body>
</html>