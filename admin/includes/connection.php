<?php
    $host="localhost";
    $username="root";
    $password="";
    $database="agromart";

    $con=mysqli_connect($host,$username,$password,$database);
    if($con){
        //echo "Connection Successful";
    }
    else{
        echo mysqli_error($con);
    }
?>