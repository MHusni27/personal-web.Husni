<?php
session_start();
if (isset($_SESSION['username'])) {
    header('location:beranda_admin.php');
    exit;
}
require_once("../koneksi.php");
?>
<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Login Administrator</title>
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

    <!-- Overlay dark jika ingin -->
    <div class="absolute inset-0 bg-black opacity-30 z-10"></div>

    <!-- Login form -->
    <div class="bg-glass shadow-lg rounded-lg p-8 w-full max-w-md text-white z-20 relative">
        <h2 class="text-2xl font-bold text-center mb-6">Login Administrator</h2>
        <form action="cek_login.php" method="post" class="space-y-5">
            <div>
                <label for="username" class="block text-sm font-medium">Username</label>
                <input type="text" name="username" id="username" required 
                    class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm text-black px-3 py-2 focus:ring-blue-500 focus:border-blue-500">
            </div>
            <div>
                <label for="password" class="block text-sm font-medium">Password</label>
                <input type="password" name="password" id="password" required 
                    class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm text-black px-3 py-2 focus:ring-blue-500 focus:border-blue-500">
            </div>
            <div class="flex justify-between items-center">
                <input type="submit" name="login" value="Login" 
                    class="bg-blue-700 text-white px-4 py-2 rounded hover:bg-blue-800 cursor-pointer">
                <input type="reset" name="cancel" value="Cancel"
                    class="bg-red-700 text-white px-4 py-2 rounded hover:bg-red-800 cursor-pointer">
            </div>
        </form>
        <div class="text-center mt-4">
            <a href="register.php" class="text-sm underline hover:text-blue-200">Belum punya akun? Daftar di sini</a>
        </div>
        <div class="text-center text-sm mt-6">
            &copy; <?php echo date('Y'); ?> - Muhammad Husni
        </div>
    </div>
</body>
</html>
