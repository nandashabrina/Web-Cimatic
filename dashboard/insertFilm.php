<?php
    include "connection.php";

    $idFilm = $_POST["id"];
    $judul = $_POST["judul"];
    $genre = $_POST["genre"];
    $ratingAge = $_POST["ratingAge"];
    $tglRilis = $_POST["tglRilis"];
    $hrgSewa = $_POST["hrgSewa"];
    $hrgBeli = $_POST["hrgBeli"];
    $img = $_POST['img'];
    $poster = $_POST['poster'];
    $deskripsi = $_POST["deskripsi"];
    $link = $_POST["linkFilm"];
    $stat = $_POST["stat"];

    $target_path1 = "directory/";
    $target_path2 = "dir/";
    $target_path1 = $target_path1 . basename(
        $_FILES['img']['name']
        );
    
    $target_path2 = $target_path2 . basename(
        $_FILES['poster']['name']
        );

    if(move_uploaded_file($_FILES['img']['tmp_name'],$target_path1)) {
        $img = $target_path1;
    }
    if(move_uploaded_file($_FILES['poster']['tmp_name'],$target_path2)){
        $poster = $target_path2;
    }

    $query = "INSERT INTO film(id, judul, genre, ratingAge, tglRilis, hrgSewa, hrgBeli, img, poster, deskripsi, link, stat)
                VALUE('$idFilm', '$judul', '$genre', '$ratingAge', '$tglRilis', '$hrgSewa', '$hrgBeli', '$img', '$poster',
                '$deskripsi', '$link', '$stat')";

    if (mysqli_query($connect, $query)) {
        header("Location:film.php");
    } else {
        echo "New film's data is failed to added <br>" . mysqli_error($connect);
    }
    
    mysqli_close($connect);
?>