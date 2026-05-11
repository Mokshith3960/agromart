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

	<title>Agromart - Edit Payments</title>

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
                            <h4>Edit Payments</h4>
                            <div class="card p-3">
                                <form method="post">
                                    <?php
                                        $id=$_GET['payment_id'];
                                        $query=mysqli_query($con,"SELECT f.farmer_name, p.product_name, o.invoice_number, o.amount, a.status from orders O 
                                        left join farmers F on O.farmer_id=F.farmer_id
                                        left join products P on P.product_id=O.product_id
                                        LEFT JOIN payments A on A.invoice_number=O.invoice_number where payment_id=$id") or die(mysqli_error($con));
                                        if(mysqli_num_rows($query)){
                                            while($row=mysqli_fetch_array($query)){
                                    ?>
                                    <div class="row">
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Payment ID</label>
                                            <input type="text" name="name" value="<?php echo $id; ?>" readonly class="form-control" placeholder="Please Enter Name.." id="name">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Farmer Name</label>
                                            <input type="text" name="name" value="<?php echo $row['farmer_name']; ?>" readonly class="form-control" placeholder="Please Enter Name.." id="name">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Product Name</label>
                                            <input type="text" name="name" value="<?php echo $row['product_name']; ?>" readonly class="form-control" placeholder="Please Enter Name.." id="name">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Amount</label>
                                            <input type="text" name="name" value="<?php echo $row['amount']; ?>" readonly class="form-control" placeholder="Please Enter Name.." id="name">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Invoice Number</label>
                                            <input type="text" name="name" value="<?php echo $row['invoice_number']; ?>" readonly class="form-control" placeholder="Please Enter Name.." id="name">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Status</label>
                                            <select name="status" id="status" class="form-control">
                                                <option value="PAYMENT-DONE">PAYMENT-DONE</option>
                                            </select>
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
                                        $status=mysqli_real_escape_string($con,$_POST['status']);

                                        $sql="UPDATE payments set status='$status' where payment_id=$id";

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
                                                        window.location='view-payments.php';
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
                                                        window.location='view-payments.php';
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