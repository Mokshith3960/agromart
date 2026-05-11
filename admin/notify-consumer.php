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

	<title>Agromart - Notify Consumer</title>

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
                            <h4>Notify consumers</h4>
                            <div class="card p-3">
                                <form method="post">
                                    <div class="row">
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">From</label>
                                            <input type="text" name="from" readonly class="form-control" value="<?php echo $_SESSION['admin_email'] ?>" id="from">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">To</label>
                                            <select name="to" id="to" class="form-control">
                                                <?php
                                                    $query=mysqli_query($con,"SELECT * from consumer") or die(mysqli_error($con));
                                                    if(mysqli_num_rows($query)){
                                                        while($row=mysqli_fetch_array($query)){
                                                ?>
                                                    <option value="<?php echo $row['consumer_id']; ?>"><?php echo $row['consumer_name']; ?></option>
                                                <?php
                                                        }
                                                    }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Subject</label>
                                            <input type="text" name="subject" required class="form-control" placeholder="Please Enter Subject.." id="subject">
                                        </div>
                                        <div class="col-6 mb-2">
                                            <label for="" class="form-label">Message</label>
                                            <textarea name="message" id="message" required class="form-control" placeholder="Please Enter Message.."></textarea>
                                        </div>
                                        <div class="text-left mt-2">
                                            <button type="submit" name="submit" class="btn btn-success">Save Details</button>
                                        </div>
                                    </div>
                                </form>
                                <?php
                                    if(isset($_POST['submit']))
                                    {
                                        $fromid=$_SESSION['admin_id'];
                                        $from=$_SESSION['admin_email'];
                                        $to=mysqli_real_escape_string($con,$_POST['to']);
                                        $subject=mysqli_real_escape_string($con,$_POST['subject']);
                                        $message=mysqli_real_escape_string($con,$_POST['message']);

                                        $sql="INSERT INTO notifications (notification_from_id,notification_from,
                                        notification_to,notification_subject,notification_message)
                                        VALUES ('$fromid','$from','$to','$subject','$message')";

                                        $insert=mysqli_query($con,$sql);

                                        if($insert)
                                        {
                                            ?>
                                                <script>
                                                    Swal.fire(
                                                    {
                                                        icon: 'success',
                                                        title: 'Success!',
                                                        text: 'Notification Sent'
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
                                                        window.location='notify-consumer.php';
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