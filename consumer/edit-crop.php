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

	<title>Agromart - Bid Crop</title>

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
                            <h4>Bid Crop</h4>
                            <div class="card p-3">
                                <form method="post" enctype="multipart/form-data">
                                    <?php
                                        $id=$_GET['crop_id'];
                                        $query=mysqli_query($con,"SELECT F.farmer_name, c.crop_name, C.crop_description, C.crop_initial_amount,C.crop_amount FROM crops C
                                        left join farmers F on F.farmer_id=C.farmer_id where crop_id=$id") or die(mysqli_error($con));
                                        if(mysqli_num_rows($query)){
                                            while($row=mysqli_fetch_array($query)){
                                    ?>
                                    <div class="row">
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Farmer Name</label>
                                            <input type="text" name="name" readonly value="<?php echo $row['farmer_name']; ?>" class="form-control" placeholder="Please Enter Name.." id="name">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Crop Name</label>
                                            <input type="text" name="name" readonly value="<?php echo $row['crop_name']; ?>" class="form-control" placeholder="Please Enter Name.." id="name">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Description</label>
                                            <textarea name="description" id="description" readonly class="form-control" placeholder="Please Enter Description.."><?php echo $row['crop_description']; ?></textarea>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Amount</label>
                                            <input type="number" name="amount" value="<?php echo $row['crop_initial_amount']; ?>" readonly class="form-control" placeholder="Please Enter Amount.." id="amount">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Amount</label>
                                            <input type="number" name="bidamount" value="<?php echo $row['crop_amount']; ?>" min="<?php echo $row['crop_amount']; ?>" required class="form-control" placeholder="Please Enter Amount.." id="bidamount">
                                        </div>
                                        <div class="text-left mt-2">
                                            <button type="submit" name="submit" class="btn btn-success">Save Details</button>
                                        </div>
                                    </div>
                                    <?php
                                            }
                                        }
                                    ?>
                                </form>
                                <?php
                                    if(isset($_POST['submit']))
                                    {
                                        $bidamount=mysqli_real_escape_string($con,$_POST['bidamount']);
                                        $consumer_id=$_SESSION['consumer_id'];

                                        $sql="UPDATE crops set crop_amount='$bidamount',consumer_id='$consumer_id' where crop_id=$id ";

                                        $insert=mysqli_query($con,$sql);

                                        if($insert)
                                        {
                                            ?>
                                                <script>
                                                    Swal.fire(
                                                    {
                                                        icon: 'success',
                                                        title: 'Success!',
                                                        text: 'Update Successful'
                                                    }).then((result) => {
                                                        window.location='view-crop.php';
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
                                                        window.location='view-crop.php';
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