<?php

$host = "localhost";
$dbname = "comics";
$username = "root";
$password = "";

try {
    $pdo = new PDO(
        "mysql:host=127.0.0.1;port=3308;dbname=$dbname;charset=utf8mb4",
        $username,
        $password
    );

    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Erreur de connexion : " . $e->getMessage());
}
