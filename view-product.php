<?php
session_start();
if(!(isset($_SESSION['farmer_id'])))
{
    header('Location:login.php');
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
            <h1 class="display-3 text-white mb-4 animated slideInDown">View Product</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a href="./index.php">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">View Product</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Quote Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp mb-2" data-wow-delay="0.1s" style="max-width: 500px;">
                <p class="fs-5 fw-bold text-primary">Product</p>
                <h1 class="display-5 mb-5">Product Details</h1>
            </div>
            <?php
                $id=$_GET['product_id'];
                $query=mysqli_query($con,"SELECT C.consumer_name, P.product_id, P.product_name, P.product_description, P.product_amount, P.image_location from products P
                left JOIN consumer C on C.consumer_id=P.consumer_id where P.product_id=$id") or die(mysqli_error($con));
                if(mysqli_num_rows($query)){
                    while($row=mysqli_fetch_array($query)){
                        $amount=$row['product_amount'];
            ?>
            <div class="row">
                <div class="col-4">
                    <img class="img-fluid" src="<?php echo str_replace("../products","./products",$row['image_location']); ?>" alt="">
                </div>
                <div class="col-8">
                    <form method="post">
                        <div class="ms-3">
                            <h6>Product ID: <b><?php echo $row['product_id']; ?></b></h6>
                            <h6>Product Name: <b><?php echo $row['product_name']; ?></b></h6>
                            <h6>Product Description: <b><?php echo $row['product_description']; ?></b></h6>
                            <h6>Product Amount: <b>&#8377;<?php echo $row['product_amount']; ?>.00</b></h6>
                            <h6>Consumer Name: <b><?php echo $row['consumer_name']; ?></b></h6>
                        </div>
                        <div class="text-start mt-3">
                            <button type="submit" name="submit" class="btn btn-primary ms-3">Buy the Product</button>
                        </div>
                    </form>
                </div>
            </div>
            <?php 
                    }
                }
            ?>
        </div>
    </div>
    <?php
        if(isset($_POST['submit']))
        {
            function generateRandomString($length = 10) {
                $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
                $charactersLength = strlen($characters);
                $randomString = '';
                for ($i = 0; $i < $length; $i++) {
                    $randomString .= $characters[rand(0, $charactersLength - 1)];
                }
                return $randomString;
            }

            $farmer_id=$_SESSION['farmer_id'];
            $invoice_number=generateRandomString();

            $sqlO="INSERT INTO orders (farmer_id,product_id,invoice_number,amount,status)
            VALUES ('$farmer_id','$id','$invoice_number','$amount','ORDER PLACED')";

            $sqlP="INSERT INTO payments (invoice_number,status,amount)
            VALUES ('$invoice_number','ORDER PLACED','$amount')";

            $insertO=mysqli_query($con,$sqlO);
            $insertP=mysqli_query($con,$sqlP);

            if($insertO && $insertP)
            {
                ?>
                    <script>
                        Swal.fire(
                        {
                            icon: 'success',
                            title: 'Success!',
                            text: 'Order Placed'
                        }).then((result) => {
                            window.location='./farmer/view-orders.php';
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
                            window.location='products.php';
                        });
                    </script>
                <?php
            }
        }
    ?>
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