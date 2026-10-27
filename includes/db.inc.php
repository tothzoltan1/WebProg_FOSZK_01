<?php
// Adatbázis kapcsolati adatok (szükség szerint módosítsd a felhasználónevet és jelszót)
$host = 'localhost';
$dbname = 'lkz01_db';
$username = 'beadando_user';
$password = '123qweasd';

try {
    $db = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch (PDOException $e) {
    die("Adatbázis kapcsolódási hiba: " . $e->getMessage());}
?>
