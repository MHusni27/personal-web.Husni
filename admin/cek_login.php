<?php
include('../koneksi.php');
session_start();

$username = mysqli_real_escape_string($db, $_POST['username']);
$password = $_POST['password'];

$sql = "SELECT * FROM pengguna WHERE username='$username'";
$query = mysqli_query($db, $sql);

if (mysqli_num_rows($query) > 0) {
    $user = mysqli_fetch_assoc($query);
    
    if (password_verify($password, $user['password'])) {
        $_SESSION['username'] = $username;
        header('Location: beranda_admin.php');
        exit;
    } else {
        echo "<script>alert('Password salah!');window.location='login.php';</script>";
    }
} else {
    echo "<script>alert('Username tidak ditemukan!');window.location='login.php';</script>";
}
?>
