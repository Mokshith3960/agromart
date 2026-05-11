<?php
session_start();
if(!(isset($_SESSION['consumer_id'])))
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

	<title>Agromart - Add Product</title>

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
                            <h4>Add Products</h4>
                            <div class="card p-3">
                                <form method="post" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Name</label>
                                            <input type="text" name="name" required class="form-control" placeholder="Please Enter Name.." id="name">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Description</label>
                                            <textarea name="description" id="description" required class="form-control" placeholder="Please Enter Description.."></textarea>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Amount</label>
                                            <input type="number" name="amount" required class="form-control" placeholder="Please Enter Amount.." id="amount">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Image</label>
                                            <input type="file" class="form-control" required id="image" name="image">
                                        </div>
                                        <div class="text-left mt-2">
                                            <button type="submit" name="submit" class="btn btn-success">Save Details</button>
                                        </div>
                                    </div>
                                </form>
                                <?php
                                    if(isset($_POST['submit']))
                                    {
                                        function generateRandomString($length = 10) {
                                            $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
                                            $charactersLength = strlen($characters);
                                            $randomString = '';
                                            for ($i = 0; $i < $length; $i++) {
                                                $randomString .= $characters[rand(0, $charactersLength - 1)];
                                            }
                                            return $randomString;
                                        }

                                        $target_dir = "../products/";
                                        $target_file = $target_dir . generateRandomString() . basename($_FILES["image"]["name"]);

                                        $name=mysqli_real_escape_string($con,$_POST['name']);
                                        $description=mysqli_real_escape_string($con,$_POST['description']);
                                        $amount=mysqli_real_escape_string($con,$_POST['amount']);
                                        $id=$_SESSION['consumer_id'];

                                        $sql="INSERT INTO products (product_name,product_description,
                                        product_amount,consumer_id,image_location)
                                        VALUES ('$name','$description','$amount','$id','$target_file')";

                                        if((move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)))
                                        {
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
                                                            window.location='view-product.php';
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
                                                            window.location='add-product.php';
                                                        });
                                                    </script>
                                                <?php
                                            }
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
                                                        window.location='add-product.php';
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