<?php
session_start();
if(!(isset($_SESSION['farmer_id'])))
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

	<title>Agromart - View Crop</title>

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

					<h1 class="h3 mb-3"><strong>View Crop</strong></h1>

					<div class="row">
						<div class="col-12 d-flex">
							<div class="card flex-fill">
								<div class="card-header">
									<h5 class="card-title mb-0">Crop Details</h5>
								</div>
								<table class="table table-bordered my-0">
									<thead>
										<tr>
											<th>Sl.No.</th>
											<th class="d-none d-xl-table-cell"></th>
											<th class="d-none d-xl-table-cell">Farmer Name</th>
											<th class="d-none d-xl-table-cell">Name</th>
											<th class="d-none d-xl-table-cell">Description</th>
											<th class="d-none d-xl-table-cell">Initial Amount</th>
											<th class="d-none d-xl-table-cell">Bidding Amount</th>
											<th class="d-none d-xl-table-cell">Action</th>
										</tr>
									</thead>
									<tbody>
										<?php
                                            $id=$_SESSION['farmer_id'];
											$query=mysqli_query($con,"SELECT F.farmer_name, c.crop_name, C.crop_description, C.crop_initial_amount,C.crop_amount, C.image_location, C.crop_id FROM crops C
                                            left join farmers F on F.farmer_id=C.farmer_id where F.farmer_id=$id") or die(mysqli_error($con));
											if(mysqli_num_rows($query)){
												$i=1;
												while($row=mysqli_fetch_array($query)){
										?>
										<tr>
											<td><?php echo $i; ?></td>
                                            <td><img src="../<?php echo $row['image_location']; ?>" height="100"></td>
											<td class="d-none d-xl-table-cell"><?php echo $row['farmer_name']; ?></td>
											<td class="d-none d-xl-table-cell"><?php echo $row['crop_name']; ?></td>
											<td class="d-none d-xl-table-cell"><?php echo $row['crop_description']; ?></td>
											<td class="d-none d-xl-table-cell">&#8377;<?php echo $row['crop_initial_amount']; ?>.00</td>
											<td class="d-none d-xl-table-cell">&#8377;<?php echo $row['crop_amount']; ?>.00</td>
											<td class="d-none d-xl-table-cell">
												<a href="./edit-crop.php?crop_id=<?php echo $row['crop_id']; ?>" class="btn btn-primary">Edit</a>
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

</body>

</html>