<?php
session_start();
if(isset($_SESSION['consumer_id']))
{
    header('Location:home.php');
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

	<link rel="canonical" href="https://demo-basic.adminkit.io/pages-sign-up.html" />

	<title>Agromart</title>

	<link href="css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

	<script src="./sweetalert/jquery-3.4.1.min.js"></script>
	<script src="./sweetalert/sweetalert2.all.min.js"></script>

</head>

<body>
	<main class="d-flex w-100">
		<div class="container d-flex flex-column">
			<div class="row vh-100">
				<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">

						<div class="text-center mt-4">
							<h1 class="h2">Get started</h1>
							<!-- <p class="lead">
								Start creating the best possible user experience for you customers.
							</p> -->
						</div>

						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
									<form method="POST">
										<div class="mb-3">
                                            <label for="" class="form-label">Name</label>
                                            <input type="text" name="name" required class="form-control form-control-lg" placeholder="Please Enter Name.." id="name">
                                        </div>
                                        <div class="mb-3">
                                            <label for="" class="form-label">Email</label>
                                            <input type="email" name="email" required class="form-control form-control-lg" placeholder="Please Enter Email.." id="email">
                                        </div>
                                        <div class="mb-3">
                                            <label for="" class="form-label">Contact Number</label>
                                            <input type="number" name="contactnumber" required class="form-control form-control-lg" placeholder="Please Enter Contact Number.." id="contactnumber">
                                        </div>
                                        <div class="mb-3">
                                            <label for="" class="form-label">Address</label>
                                            <textarea name="address" id="address" required name="address" class="form-control form-control-lg" placeholder="Please Enter Address.."></textarea>
                                        </div>
                                        <div class="mb-3">
                                            <label for="" class="form-label">Username</label>
                                            <input type="text" name="username" required class="form-control form-control-lg" placeholder="Please Enter Username.." id="username">
                                        </div>
                                        <div class="mb-3">
                                            <label for="" class="form-label">Password</label>
                                            <input type="password" name="password" required class="form-control form-control-lg" placeholder="Please Enter Password.." id="password">
                                        </div>
										<div class="text-center mt-3">
                                            <button type="submit" name="submit" class="btn btn-success">Sign Up</button>
											<p>Already have any Account? <a href="./index.php">Login here</a></p>
										</div>
									</form>
								</div>
							</div>
						</div>
						<?php
							if(isset($_POST['submit']))
							{
								$name=mysqli_real_escape_string($con,$_POST['name']);
								$address=mysqli_real_escape_string($con,$_POST['address']);
								$email=mysqli_real_escape_string($con,$_POST['email']);
								$contactnumber=mysqli_real_escape_string($con,$_POST['contactnumber']);
								$username=mysqli_real_escape_string($con,$_POST['username']);
								$password=mysqli_real_escape_string($con,$_POST['password']);

								$sql="INSERT INTO consumer (consumer_name,consumer_address,
								consumer_email,consumer_contact_number,consumer_username,consumer_password)
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
												text: 'Register Successful'
											}).then((result) => {
												window.location='index.php';
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
												window.location='register.php';
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

	<script src="js/app.js"></script>

</body>

</html>