<?php
    include "connection.php";

    $idFilm = $_GET["id"];
    $query = "DELETE FROM film WHERE id='$idFilm'";

    if(mysqli_query($connect, $query)){
        header('Location:film.php');
    }else{
        echo "Failed to delete data <br>" . mysqli_error($connect);
    }

    mysqli_close($connect);
?>