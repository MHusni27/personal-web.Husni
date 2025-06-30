<?php
require_once("../koneksi.php");

$pesan = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama_lengkap = $_POST['nama_lengkap'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $konfirmasi = $_POST['konfirmasi'];

    if ($password !== $konfirmasi) {
        $pesan = "Password dan konfirmasi tidak cocok.";
    } else {
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        $cek = mysqli_query($db, "SELECT * FROM pengguna WHERE username = '$username'");
        if (mysqli_num_rows($cek) > 0) {
            $pesan = "Username sudah digunakan.";
        } else {
            $simpan = mysqli_query($db, "INSERT INTO pengguna (nama_lengkap, username, password) VALUES ('$nama_lengkap', '$username', '$hashed_password')");

            if ($simpan) {
                header("Location: login.php?status=sukses");
                exit;
            } else {
                $pesan = "Gagal menyimpan data.";
            }
        }
    }
}
?>
<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Registrasi Pengguna</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        .bg-glass {
            background-color: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.3);
        }
    </style>
</head>

<body class="min-h-screen flex items-center justify-center relative overflow-hidden">

    <!-- Background image -->
    <img src="images4.jpg" 
         alt="Background" 
         class="absolute inset-0 w-full h-full object-cover z-0">
    <div class="absolute inset-0 bg-black opacity-30 z-10"></div>

    <!-- Form Registrasi -->
    <div class="bg-glass shadow-lg rounded-lg p-8 w-full max-w-md text-white z-20 relative">
        <h2 class="text-2xl font-bold text-center mb-6">Registrasi Pengguna</h2>
        <?php if ($pesan): ?>
            <div class="bg-red-500 text-white p-2 mb-4 rounded text-sm text-center"><?php echo $pesan; ?></div>
        <?php endif; ?>
        <form action="" method="post" class="space-y-4">
            <div>
                <label for="nama_lengkap" class="block text-sm font-medium">Nama Lengkap</label>
                <input type="text" name="nama_lengkap" id="nama_lengkap" required 
                       class="mt-1 block w-full border border-gray-300 rounded-md text-black px-3 py-2">
            </div>
            <div>
                <label for="username" class="block text-sm font-medium">Username</label>
                <input type="text" name="username" id="username" required 
                       class="mt-1 block w-full border border-gray-300 rounded-md text-black px-3 py-2">
            </div>
            <div>
                <label for="password" class="block text-sm font-medium">Password</label>
                <input type="password" name="password" id="password" required 
                       class="mt-1 block w-full border border-gray-300 rounded-md text-black px-3 py-2">
            </div>
            <div>
                <label for="konfirmasi" class="block text-sm font-medium">Konfirmasi Password</label>
                <input type="password" name="konfirmasi" id="konfirmasi" required 
                       class="mt-1 block w-full border border-gray-300 rounded-md text-black px-3 py-2">
            </div>
            <div class="flex justify-between items-center">
                <input type="submit" value="Daftar" 
                       class="bg-green-700 text-white px-4 py-2 rounded hover:bg-green-800 cursor-pointer">
                <a href="login.php" class="text-sm underline hover:text-blue-200">Sudah punya akun? Login</a>
            </div>
        </form>
        <div class="text-center text-sm mt-6">
            &copy; <?php echo date('Y'); ?> - Muhammad Husni
        </div>
    </div>
</body>
</html>
