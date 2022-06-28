<html>
    <head>
        <title>Edit Film Form</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
    
        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    
        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        </head>
        
<body class="bg-gradient-primary">
    <div class="row justify-content-center">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-10">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900">Edit Data Here</h1>
                            </div>
        <?php
            include "connection.php";
            $idFilm = $_GET["id"];
            $query = "SELECT * FROM film WHERE id='$idFilm'";
            $result = mysqli_query($connect, $query);
            ?>
        <form action="editFilmProcess.php" method="post" enctype="multipart/form-data">
            <table>
                <?php
                        while($row=mysqli_fetch_array($result)){
                ?>
                <tr>
                    <td> ID : </td>
                    <td><input type="text" name="id" value="<?php echo $row['id'];?>"></td>
                </tr>
                <tr>
                    <td> Judul : </td>
                    <td><input type="text" name="judul" value="<?php echo $row['judul'];?>"></td>
                </tr>
                <tr>
                    <td>Genre : </td>
                    <td><input type="text" name="genre" value="<?php echo $row['genre'];?>"></td>
                </tr>
                <tr>
                    <td>Rating age : </td>
                    <td><input type="number" name="ratingAge" value="<?php echo $row['ratingAge'];?>"></td>
                </tr>
                <tr>
                    <td>Tanggal rilis : </td>
                    <td><input type="date" name="tglRilis" value="<?php echo $row['tglRilis'];?>"></td>
                </tr>
                <tr>
                    <td>Harga sewa : </td>
                    <td><input type="number" name="hrgSewa" value="<?php echo $row['hrgSewa'];?>"></td>
                </tr>
                <tr>
                    <td>Harga beli : </td>
                    <td><input type="number" name="hrgBeli" value="<?php echo $row['hrgBeli'];?>"></td>
                </tr>
                <tr>
                    <td>Deskripsi : </td>
                    <td>
                        <textarea name="deskripsi" cols="30" rows="10"><?php echo $row['deskripsi'];?></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Link : </td>
                    <td><input type="text" name="link" value="<?php echo $row['link'];?>"></td>
                </tr>
                <tr>
                    <td>Status: </td>
                    <td><input type="number" name="stat" value="<?php echo $row['stat'];?>"></td>
                </tr>
                <tr>
                    <td>Image teaser : </td>
                    <td><input type="file" name="img"></td>
                    <td><input type="text" name="img_old" value="<?php echo $row['img'];?>"></td>
                </tr>
                <tr>
                    <td>Image poster : </td>
                    <td><input type="file" name="poster"></td>
                    <td><input type="text" name="poster_old" value="<?php echo $row['poster'];?>"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="save" value="save"></td>
                </tr>
                <?php
                    }
                ?>
            </table>
        </form>
        </div>
    </div>
</div>
</div>
</div>

</div>
        
         <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Custom scripts for alerts -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </body>
</html>