<!DOCTYPE html>
<html>
    <head>
        <title>Insert Film Page</title> <meta charset="utf-8">
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
                                <h1 class="h4 text-gray-900">Add Film Data Here</h1>
                            </div>
        <form action="insertFilm.php" method="post" enctype="multipart/form-data">
            <table>
                <tr>
                    <td>ID : </td>
                    <td><input type="number" name="id"></td>
                </tr>
                <tr>
                    <td>Judul : </td>
                    <td><input type="text" name="judul"></td>
                </tr>
                <tr>
                    <td>Genre : </td>
                    <td><input type="text" name="genre"></td>
                </tr>
                <tr>
                    <td>Rating age : </td>
                    <td><input type="number" name="ratingAge"></td>
                </tr>
                <tr>
                    <td>Tanggal rilis : </td>
                    <td><input type="date" name="tglRilis"></td>
                </tr>
                <tr>
                    <td>Harga sewa : </td>
                    <td><input type="number" name="hrgSewa"></td>
                </tr>
                <tr>
                    <td>Harga beli : </td>
                    <td><input type="number" name="hrgBeli"></td>
                </tr>
                <tr>
                    <td>Deskripsi : </td>
                    <td>
                        <textarea name="deskripsi" cols="30" rows="10"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Link : </td>
                    <td><input type="text" name="linkFilm"></td>
                </tr>
                <tr>
                    <td>Status : </td>
                    <td><input type="number" name="stat"></td>
                </tr>
                <tr>
                    <td>Image teaser : </td>
                    <td><input type="file" name="img"></td>
                </tr>
                <tr>
                    <td>Image poster : </td>
                    <td><input type="file" name="poster"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="submit" value="add"></td>
                </tr>
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