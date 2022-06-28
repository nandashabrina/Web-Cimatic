<!DOCTYPE html>
<html>
    <head>
        <title>Registration Page</title>
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
                                <h1 class="h4 text-gray-900">Create an Account!</h1>
                            </div>
        <?php
            if(isset($_GET["error"])){
                $error = $_GET["error"];
            }else{
                $error = "";
            }
            $message = "";
            if($error == "failed"){
                $message = "Registration failed, please try again!";
            }
        ?>
        <p><?php echo $message;?></p>
        <form method="post" href="../dasboard/regisProcess.php" action="regisProcess.php">
            <table>
                <tr>
                    <td>First name: </td>
                    <td><input type="text" name="firstName"></td>
                </tr>
                <tr>
                    <td>Last name: </td>
                    <td><input type="text" name="lastName"></td>
                </tr>
                <tr>
                    <td>Username: </td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input type="email" name="email"></td>
                </tr>
                <tr>
                    <td>
                        <label for="level">Sign up as</label>
                    </td>
                    <td>
                        <select name="level" id="level">
                            <option name="user" value="user">User</option>
                            <option name="admin" value="admin">Admin</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="registration" id="regBtn" value="Sign Up"></td>
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