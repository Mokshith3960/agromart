<nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="index.php" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h1 class="m-0">Agromart</h1>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.php" class="nav-item nav-link active">Home</a>
                <a href="about.php" class="nav-item nav-link">About</a>
                <a href="products.php" class="nav-item nav-link">Products</a>
                <a href="contact.php" class="nav-item nav-link">Contact</a>
            </div>
            <?php
            if(isset($_SESSION['farmer_id']))
            {
                ?>
                    <a href="./farmer/index.php" class="btn btn-primary py-4 px-lg-4 rounded-0 d-none d-lg-block">My Account<i class="fa fa-arrow-right ms-3"></i></a>
                <?php
            }
            else
            {
                ?>
                    <a href="./login.php" class="btn btn-primary py-4 px-lg-4 rounded-0 d-none d-lg-block">Login<i class="fa fa-arrow-right ms-3"></i></a>
                <?php
            }
            ?>
            
        </div>
    </nav>