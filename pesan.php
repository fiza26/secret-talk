<?php 
require "koneksi.php";
$pesan = $_POST['pesan'];
$oke = $_POST['oke'];
// $query = "UPDATE data SET pesan = '$pesan' WHERE nama = '$oke'";
$query = "INSERT INTO comment_table VALUES('', '$oke', '$pesan')";
$cek = mysqli_query($koneksi, $query);

if ($cek) {
	echo "Berhasil!";
	header("Location: profil.php?id=$oke");
}
 ?>