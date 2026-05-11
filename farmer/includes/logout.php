<?php
session_start();
unset($_SESSION['farmer_id']);
unset($_SESSION['farmer_name']);
unset($_SESSION['farmer_email']);
?>

<!DOCTYPE html>
<html>
<head>
	<title>Agromart</title>
    <script src="../sweetalert/jquery-3.4.1.min.js"></script>
    <script src="../sweetalert/sweetalert2.all.min.js"></script>
</head>
    <body>
        <script>
            Swal.fire(
            {
                icon: 'success',
                title: 'Success',
                text: 'You successfully Logged out'
            }).then((result) => {
                window.location='../../index.php';
            });
        </script>

    </body>
</html>
<?php
?>