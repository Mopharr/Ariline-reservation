<?php
session_start();
?><!-- log on to codeastro.com for more projects -->
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>	
        <link href="https://fonts.googleapis.com/css2?family=Italianno&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://kit.fontawesome.com/44f557ccce.js"></script>
        <!-- Bootstrap CSS -->
		<!-- log on to codeastro.com for more projects -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Available Flight</title>         
        <link rel = "icon" href ="../assets/images/brand.png"  type = "image/x-icon">       
    </head>
<style>
.astext {
    background:none;
    border:none;
    margin:0;
    padding:0;
    cursor: pointer;
}    
@font-face {
  font-family: 'product sans';
  src: url('../assets/css/Product Sans Bold.ttf');
}
h5:hover {
    color: #E8E8E8;
}
h5 {
    color: white;
    font-weight: bold;
    font-size: 20px ;
	font-family: 'Montserrat', sans-serif;
}
.btn-login {
    /* font-size: 22px ; */
    font-weight: bold;
	font-family: 'Montserrat', sans-serif;    
}
.testing {
    display: flex;
    align-items: center;
    width: 100%;
    justify-content: space-between;
}

</style>
    <body>        
        <nav class="navbar navbar-expand-lg navbar-dark bg-transparent testing">
        <a class="navbar-brand" href="index.php"><h5>Home</h5>            
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse anTest" id="navbarSupportedContent">
             <!-- log on to codeastro.com for more projects -->       
            <?php
            if(isset($_SESSION['userId'])) {
                echo '
                <ul  class="nav ">
                    <li class="nav-item mr-3">
                            
                            <h5 class=" text-light">
                            <i class="ml-1 fa fa-user text-light"></i>
                            '.$_SESSION['userUid'].'
                            </h5>
                    </li>          
                    <li class="nav-item ml-3">
                        <form action="includes/logout.inc.php" class="logout_form" method="POST">
                        <button class="astext"  type="submit">
                            <h5> Logout </h5>                            
                            </button>
                        </form> 
                    </li>                       
                </ul>    ';
            } else {
                echo '
                <div class="dropdown "
                    style="margin-right:70px">
                <button class="btn btn-login btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Login                            
                </button>
                <div class="dropdown-menu w-75" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item " href="login.php">Passenger</a>
                    <a class="dropdown-item " href="admin/login.php">Administrator</a>
                </div>
                </div>';
            }
            ?>
        </div>
        </nav>