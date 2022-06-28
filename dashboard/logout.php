<head>
        <script type="text/javascript">
            function logoutmessage(){
                alert("Successfully logout!");
            }
        </script>
</head>
<body onload = "logoutmessage()">
<?php
    session_start();
    if(session_destroy()){
        header("Location:../dashboard/loginForm.php");
    }
?>
</body>