<?php
session_start();
if(isset($_SESSION['admin_id']))
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

	<link rel="canonical" href="https://demo-basic.adminkit.io/pages-sign-in.html" />

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
							<h1 class="h2">Welcome back to Agromart</h1>
							<p class="lead">
								Sign in to your account to continue
							</p>
						</div>

						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
									<div class="text-center">
										<img src="img/avatars/avatar.jpg" alt="Charles Hall" class="img-fluid rounded-circle" width="132" height="132" />
									</div>
									<form method="POST" onsubmit="return ValidateForm()">
										<div class="mb-3">
											<label class="form-label">Username</label>
											<input class="form-control form-control-lg" type="text" name="username" id="username" onclick="clearvalidation('username')" placeholder="Enter your username.." />
											<span class="text-danger" id="validateusername"></span>
										</div>
										<div class="mb-3">
											<label class="form-label">Password</label>
											<input class="form-control form-control-lg" type="password" name="password" id="password" onclick="clearvalidation('password')" placeholder="Enter your password" />
											<span class="text-danger" id="validatepassword"></span>
										</div>
										<div class="text-center mt-3">
											<button type="submit" name="submit" class="btn btn-lg btn-primary">Sign in</button>
										</div>
									</form>
									<?php
										if(isset($_POST['submit']))
										{
											$username=mysqli_real_escape_string($con,$_POST['username']);
											$password=mysqli_real_escape_string($con,$_POST['password']);

											$sql="SELECT * FROM admin WHERE admin_username='$username' AND admin_password='$password'";
											$query=mysqli_query($con,$sql) or die(mysqli_error($con));
											if(mysqli_num_rows($query))
											{
												$fetch=mysqli_fetch_array($query);
												$_SESSION['admin_id']=$fetch['admin_id'];
												$_SESSION['admin_name']=$fetch['admin_username'];
												$_SESSION['admin_email']=$fetch['admin_email'];
												?>
													<script>
														Swal.fire(
														{
															icon: 'success',
															title: 'Success!',
															text: 'You successfully Logged in'
														}).then((result) => {
															window.location='home.php';
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
														window.location='index.php';
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
				</div>
			</div>
		</div>
	</main>

	<script src="js/app.js"></script>
	<script>
		function ValidateForm(){
			document.getElementById("validateusername").textContent="";    
			document.getElementById("validatepassword").textContent="";

			var username=document.getElementById("username").value;
			var password=document.getElementById("password").value;

			var flag=true;
			
			if (username == "") {
				document.getElementById("validateusername").textContent = "Please Enter Name";
				document.getElementById("username").style.border = "1px solid red";
				flag = false;
			}
			if(password==""){
				document.getElementById("validatepassword").textContent="Please enter Password";
				document.getElementById("password").style.border="1px solid red";
				flag=false;
			}

			return flag;
		}

		function clearvalidation(input){
			var spanid = "validate"+input;
			document.getElementById(spanid).innerHTML = "";
			document.getElementById(input).style.border="1px solid green";
		}
	</script>
</body>

</html>