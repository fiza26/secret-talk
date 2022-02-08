<?php
$servername = "localhost";
$database = "secret-talk";
$username = "root";
$password = "";

$koneksi = mysqli_connect($servername, $username, $password, $database);

if (!$koneksi) {
    echo "koneksi gagal";
}

?>