<?php
session_start();
if(!(isset($_SESSION['admin_id'])))
{
    header('Location:../index.php');
}
include './connection.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title>Agromart</title>
    <script src="../sweetalert/jquery-3.4.1.min.js"></script>
    <script src="../sweetalert/sweetalert2.all.min.js"></script>
</head>
    <body>
    <?php 
            if(isset($_GET['consumer_id']))
            {
                $id=$_GET['consumer_id'];
                $sql="DELETE from consumer where consumer_id='$id'";
                $insert=mysqli_query($con,$sql);
                if($insert)
                {
                    ?>
                        <script>
                            Swal.fire(
                            {
                                icon: 'success',
                                title: 'Success!',
                                text: 'Delete successful!!'
                            }).then((result) => {
                                window.location='../view-consumer.php';
                            });
                        </script>

                    <?php
                }
                else
                {
                    ?>
                        <script>
                            Swal.fire(
                            {
                                icon: 'error',
                                title: 'Oops',
                                text: 'Something went wrong!!'
                            }).then((result) => {
                                window.location='../view-consumer.php';
                            });
                        </script>

                    <?php
                }
            }
            else if(isset($_GET['farmer_id']))
            {
                $id=$_GET['farmer_id'];
                $sql="DELETE from farmers where farmer_id='$id'";
                $insert=mysqli_query($con,$sql);
                if($insert)
                {
                    ?>
                        <script>
                            Swal.fire(
                            {
                                icon: 'success',
                                title: 'Success!',
                                text: 'Delete successful!!'
                            }).then((result) => {
                                window.location='../view-farmer.php';
                            });
                        </script>

                    <?php
                }
                else
                {
                    ?>
                        <script>
                            Swal.fire(
                            {
                                icon: 'error',
                                title: 'Oops',
                                text: 'Something went wrong!!'
                            }).then((result) => {
                                window.location='../view-farmer.php';
                            });
                        </script>

                    <?php
                }
            }            
            
        ?>

    </body>
</html>
<?php
?>