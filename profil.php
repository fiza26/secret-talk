<?php 
require "koneksi.php";

$id = $_GET['id'];

if (isset($_GET['id'])) {
$query = "SELECT * FROM data WHERE nama = '$id'";
$result = mysqli_query($koneksi, $query);
while ($row = mysqli_fetch_assoc($result)) {
	$nama = $row['nama'];
	$pesan = $row['pesan'];
}

}

?>
 

<!--  <span><center><?php echo $nama; ?></center></span><br>
 <span><?php echo $pesan; ?></span> -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles2.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <title>Secret Talk</title>
</head>
<body>
    <div class="container">
        <div class="atas">
        <div class="header">
        <h2>Secret Talk</h2>
            <span>Platform berbincang secara anonim</span>
            </div>
            <div class="gambar">
            <img src="flower.png" alt="">
        </div>
        </div>
        <center><span class="nama"><?php echo "$nama"; ?></span></center>
       	<center><span class="teks">Kirim pesan kepada <?php echo "$nama"; ?> secara rahasia</span></center>
       	<form action="pesan.php" method="POST">
       		<input type="text" name="pesan" placeholder="Tulis pesanmu disini...">
       		<button type="submit">Kirim</button>
            <textarea placeholder="nama" name="oke"><?php echo "$nama"; ?></textarea>
       	</form>
        </div>
    </div>
    <div class="container-dua">
        <?php  
        $query = mysqli_query($koneksi, "SELECT * FROM comment_table WHERE nama = '$id' ORDER BY id DESC");
        while ($hasil = mysqli_fetch_assoc($query)) {
    	echo "<div class='anonim'>Anonim</div>";
    	echo "<div class='pesan'>".$hasil['komentar']."</div>";
    	echo "<br>";
        }
        ?>
    </div>
</body>
</html>
