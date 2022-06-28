<?php
    $target_path1 = "directory/";
    $target_path2 = "dir/";

    $img = $target_path1 . basename($_FILES["img"]["name"]);
    $poster = $target_path2 . basename($_FILES["poster"]["name"]);

    if(move_uploaded_file($_FILES["img"]["tmp_name"],$img) && move_uploaded_file($_FILES["poster"]["tmp_name"],$poster)){     
    $idFilm = $_POST["id"];
    $judul = $_POST["judul"];
    $genre = $_POST["genre"];
    $ratingAge = $_POST["ratingAge"];
    $tglRilis = $_POST["tglRilis"];
    $hrgSewa = $_POST["hrgSewa"];
    $hrgBeli = $_POST["hrgBeli"];
    $deskripsi = $_POST["deskripsi"];
    $link = $_POST["link"];
    $status = $_POST["stat"];

    include "connection.php";
    $query = "UPDATE film SET id='$idFilm', judul='$judul', genre='$genre', ratingAge='$ratingAge',
    tglRilis='$tglRilis', hrgSewa='$hrgSewa', hrgBeli='$hrgBeli', deskripsi='$deskripsi',
    link='$link', img='$img', poster='$poster', stat='$status' WHERE id='$idFilm'";

        if(mysqli_query($connect, $query)){
            header('Location:film.php');
        }else{
            echo "Failed to update data <br>" . mysqli_error($connect);
        }

        mysqli_close($connect);
    }
?>