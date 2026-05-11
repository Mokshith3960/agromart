<?php
session_start();
if(!(isset($_SESSION['admin_id'])))
{
    header('Location:index.php');
}
include './includes/connection.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="shortcut icon" href="img/icons/icon-48x48.png" />

	<link rel="canonical" href="https://demo-basic.adminkit.io/" />

	<title>Agromart - Add Farmer</title>

	<link href="css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

    <script src="./sweetalert/jquery-3.4.1.min.js"></script>
	<script src="./sweetalert/sweetalert2.all.min.js"></script>
</head>

<body>
	<div class="wrapper">
		<?php include('./includes/sidebar.php'); ?>

		<div class="main">
			<?php include('./includes/navbar.php'); ?>

			<main class="content">
				<div class="container-fluid p-0">
                    <div class="row">
                        <div class="col-12">
                            <h4>Add Farmers</h4>
                            <div class="card p-3">
                                <form method="post">
                                    <div class="row">
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Name</label>
                                            <input type="text" name="name" required class="form-control" placeholder="Please Enter Name.." id="name">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Email</label>
                                            <input type="email" name="email" required class="form-control" placeholder="Please Enter Email.." id="email">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Contact Number</label>
                                            <input type="number" name="contactnumber" required class="form-control" placeholder="Please Enter Contact Number.." id="contactnumber">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Address</label>
                                            <textarea name="address" id="address" required name="address" class="form-control" placeholder="Please Enter Address.."></textarea>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Username</label>
                                            <input type="text" name="username" required class="form-control" placeholder="Please Enter Username.." id="username">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Password</label>
                                            <input type="password" name="password" required class="form-control" placeholder="Please Enter Password.." id="password">
                                        </div>
                                        <div class="text-left mt-2">
                                            <button type="submit" name="submit" class="btn btn-success">Save Details</button>
                                        </div>
                                    </div>
                                </form>
                                <?php
                                    if(isset($_POST['submit']))
                                    {
                                        $name=mysqli_real_escape_string($con,$_POST['name']);
                                        $address=mysqli_real_escape_string($con,$_POST['address']);
                                        $email=mysqli_real_escape_string($con,$_POST['email']);
                                        $contactnumber=mysqli_real_escape_string($con,$_POST['contactnumber']);
                                        $username=mysqli_real_escape_string($con,$_POST['username']);
                                        $password=mysqli_real_escape_string($con,$_POST['password']);

                                        $sql="INSERT INTO farmers (farmer_name,farmer_address,
                                        farmer_email,farmer_contact_number,farmer_username,farmer_password)
                                        VALUES ('$name','$address','$email','$contactnumber','$username','$password')";

                                        $insert=mysqli_query($con,$sql);

                                        if($insert)
                                        {
                                            ?>
                                                <script>
                                                    Swal.fire(
                                                    {
                                                        icon: 'success',
                                                        title: 'Success!',
                                                        text: 'Insertion Successful'
                                                    }).then((result) => {
                                                        window.location='view-farmer.php';
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
                                                        icon: 'warning',
                                                        title: 'Oops!',
                                                        text: 'Something went wrong!!'
                                                    }).then((result) => {
                                                        window.location='add-farmer.php';
                                                    });
                                                </script>
                                            <?php
                                        }
                                    }
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
			</main>

			<?php include('./includes/footer.php'); ?>
		</div>
	</div>

	<script src="js/app.js"></script>

</body>

</html>