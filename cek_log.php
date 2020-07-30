<?php
	session_start();
	include("config/koneksi.php");

	$user=$_POST['user'];
	$pass=md5($_POST['pass']);

	$query=@mysqli_query($con, "SELECT * FROM tbl_admin, tbl_pegawai WHERE tbl_admin.username='$user' AND tbl_admin.password='$pass'");
	$r=@mysqli_fetch_array($query);
	$num=@mysqli_num_rows($query);

	if($num>=1){
		$_SESSION['idLog']=$r['id_peg'];
		$_SESSION['idLevel']=$r['level'];
		$id=$r['id_peg'];
		$tgl=date('d/m/Y');
		$queryLogtemp=@mysqli_query($con, "INSERT INTO log_temp (id_pegawai, tgl_temp) VALUES ('$id','$tgl')");
		header("location:media.php?module=home");
	}
	else{
		echo "
			<script>
				alert('Username dan Password anda salah!');
				window.location='index.php';
			</script>
		";
	}
?>