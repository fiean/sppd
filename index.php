<?php
	session_start();
	if(isset($_SESSION['idLog'])){
		header("location:media.php?module=home");
	}
	else{
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Aplikasi Perjalanan Dinas KPU Prov. Jabar | </title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link href="css/icheck/flat/green.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
</head>

<body style="background:url(images/bg.png);">
    
    <div class="">


        <div id="wrapper">
            <div id="login" class="animate shake">
                <section class="login_content">
				<img src='images/logo_perhunungan.png' style='width:100px;height:100px;'>
				<h3></h3>
				<br>
                    <h2>KPU PROVINSI JAWA BARAT</h2>
                    <H5>PEMBUATAN SURAT PERJALANAN DINAS</H5>
                    <form method="post" action="cek_log.php">
						<H1>LOGIN</h1>
                 
                        <div>
						
                            <input type="text" name="user" class="form-control" placeholder="Username" required="" />
                        </div>
                        <div>
                            <input type="password" name="pass" class="form-control" placeholder="Password" required="" />
                        </div>
                        <div>
                            <input type="submit" class="btn btn-primary submit" value="Login">
                            
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">                         
                            <br />
                            <div>
                                <p>&copy; Copyright <?php echo date('Y'); ?>, Aing Tea</p>
                            </div>
                        </div>
                    </form>
                    <!-- form -->
                </section>
                <!-- content -->
            </div>
            
        </div>
    </div>

</body>

</html>
<?php
}
?>