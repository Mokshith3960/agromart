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

	<title>Agromart - View Payments</title>

	<link href="css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body>
	<div class="wrapper">
		<?php include('./includes/sidebar.php'); ?>

		<div class="main">
			<?php include('./includes/navbar.php'); ?>

			<main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3"><strong>View Payments</strong></h1>

					<div class="row">
						<div class="col-12 d-flex">
							<div class="card flex-fill">
								<div class="card-header">
									<h5 class="card-title mb-0">Farmer Payments</h5>
								</div>
								<table class="table table-bordered my-0">
									<thead>
										<tr>
											<th>Sl.No.</th>
											<th class="d-none d-xl-table-cell">Farmer Name</th>
											<th class="d-none d-xl-table-cell">Product Name</th>
											<th class="d-none d-xl-table-cell">Invoice Number</th>
											<th class="d-none d-xl-table-cell">Amount</th>
											<th>Status</th>
											<th class="d-none d-xl-table-cell">Action</th>
										</tr>
									</thead>
									<tbody>
										<?php
											$query=mysqli_query($con,"SELECT A.payment_id, f.farmer_name, p.product_name, o.invoice_number, o.amount, a.status from orders O 
											left join farmers F on O.farmer_id=F.farmer_id
											left join products P on P.product_id=O.product_id
                                            LEFT JOIN payments A on A.invoice_number=O.invoice_number") or die(mysqli_error($con));
											if(mysqli_num_rows($query)){
												$i=1;
												while($row=mysqli_fetch_array($query)){
										?>
										<tr>
											<td><?php echo $i; ?></td>
											<td class="d-none d-xl-table-cell"><?php echo $row['farmer_name']; ?></td>
											<td class="d-none d-xl-table-cell"><?php echo $row['product_name']; ?></td>
											<td class="d-none d-xl-table-cell"><?php echo $row['invoice_number']; ?></td>
											<td class="d-none d-md-table-cell"><?php echo $row['amount']; ?></td>
											<td><span class="badge bg-primary"><?php echo $row['status']; ?></span></td>
											<td class="d-none d-xl-table-cell">
												<a href="./edit-payment.php?payment_id=<?php echo $row['payment_id']; ?>" class="btn btn-primary">Edit</a>
												<!-- <a href="./includes/delete-function.php?payment_id=<?php echo $row['payment_id']; ?>" class="btn btn-danger">Delete</a> -->
												<a onclick="CheckDelete(<?php echo $row['payment_id']; ?>)" class="btn btn-danger">Delete</a>
											</td>
										</tr>
										<?php
												$i++;
												}
											}
										?>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</main>

			<?php include('./includes/footer.php'); ?>
		</div>
	</div>

	<script src="js/app.js"></script>

	<script>
		function CheckDelete(ID) {
			if (confirm("Are you sure to Delete?")) {
				window.location='./includes/delete-function.php?payment_id='+ID;
			}
		}
	</script>
</body>

</html>