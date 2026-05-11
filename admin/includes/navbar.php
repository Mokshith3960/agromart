<nav class="navbar navbar-expand navbar-light navbar-bg">
				<a class="sidebar-toggle js-sidebar-toggle">
				<i class="hamburger align-self-center"></i>
				</a>

				<div class="navbar-collapse collapse">
					<ul class="navbar-nav navbar-align">
						<li class="nav-item dropdown">
							<a class="nav-icon dropdown-toggle" href="#" id="alertsDropdown" data-bs-toggle="dropdown">
								<div class="position-relative">
									<i class="align-middle" data-feather="bell"></i>
									<span class="indicator">
                                    <?php 
                                        $ID = $_SESSION['admin_id'];
                                        $Count = mysqli_num_rows(mysqli_query($con,"SELECT * from notifications where notification_from_id=$ID"));
                                        echo $Count; 
                                    ?>
                                    </span>
								</div>
							</a>
							<div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="alertsDropdown">
								<div class="dropdown-menu-header">
									<?php echo $Count; ?> New Notifications
								</div>
								<div class="list-group">
                                    <?php
                                        $query=mysqli_query($con,"SELECT * from notifications where notification_from_id=$ID") or die(mysqli_error($con));
                                        if(mysqli_num_rows($query)){
                                            $i=1;
                                            while($row=mysqli_fetch_array($query)){
                                    ?>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-danger" data-feather="alert-circle"></i>
											</div>
											<div class="col-10">
												<div class="text-dark"><?php echo $row['notification_subject']; ?></div>
												<div class="text-muted small mt-1"><?php echo $row['notification_message']; ?></div>
											</div>
										</div>
									</a>
									<?php
                                            }
                                        }
                                    ?>
								</div>
							</div>
						</li>
						
						<li class="nav-item dropdown">
							<a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
                <i class="align-middle" data-feather="settings"></i>
              </a>

							<a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
                <img src="img/avatars/avatar.jpg" class="avatar img-fluid rounded me-1" alt="Charles Hall" /> <span class="text-dark"><?php $Name = $_SESSION['admin_name']; echo $Name; ?></span>
              </a>
							<div class="dropdown-menu dropdown-menu-end">
								<a class="dropdown-item" href="./includes/logout.php">Log out</a>
							</div>
						</li>
					</ul>
				</div>
			</nav>