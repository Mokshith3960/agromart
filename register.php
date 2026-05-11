<?php
session_start();
if(isset($_SESSION['farmer_id']))
{
    header('Location:./farmer/index.php');
}
include './includes/connection.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Agromart</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;500&display=swap" rel="stylesheet">  

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

    <script src="./sweetalert/jquery-3.4.1.min.js"></script>
	<script src="./sweetalert/sweetalert2.all.min.js"></script>
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
    </div>
    <!-- Spinner End -->


    <!-- Topbar Start -->
    <?php include('./includes/topbar.php'); ?>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <?php include('./includes/navbar.php'); ?>
    <!-- Navbar End -->


    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5">
            <h1 class="display-3 text-white mb-4 animated slideInDown">Register</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a href="./index.php">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Register</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Quote Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <p class="fs-5 fw-bold text-primary">Register</p>
                <h1 class="display-5 mb-5">Register to Agromart</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-7">
                    <div class="bg-light rounded p-4 p-sm-5 wow fadeInUp" data-wow-delay="0.1s">
                        <form method="post">
                            <div class="row g-3">
                                <div class="col-sm-12">
                                    <div class="form-floating">
                                        <input type="text" class="form-control border-0" id="name" name="name" placeholder="Your name">
                                        <label for="gname">Your Name</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-floating">
                                        <input type="email" class="form-control border-0" id="email" name="email" placeholder="Your Email">
                                        <label for="gmail">Your Email</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-floating">
                                        <input type="number" class="form-control border-0" id="contactnumber" name="contactnumber" placeholder="Your Contact Number">
                                        <label for="gmail">Your Contact Number</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <textarea class="form-control border-0" placeholder="Your Address" id="address" name="address" style="height: 100px"></textarea>
                                        <label for="message">Address</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-floating">
                                        <input type="text" class="form-control border-0" id="username" name="username" placeholder="Your Username">
                                        <label for="cage">Your Username</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-floating">
                                        <input type="password" class="form-control border-0" id="password" name="password" placeholder="Your Password">
                                        <label for="cage">Your Password</label>
                                    </div>
                                </div>
                                <div class="col-12 text-center">
                                    <button class="btn btn-primary py-3 px-4" name="submit" type="submit">Submit Now</button>
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
                                                text: 'Register Successful'
                                            }).then((result) => {
                                                window.location='login.php';
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

                        <div class="text-center mt-2">
                            <p>Already have any account?<a href="./login.php"> Login Now</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quote End -->


    <!-- Footer Start -->
    <?php include('./includes/footer.php'); ?>
    <!-- Copyright End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/parallax/parallax.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>