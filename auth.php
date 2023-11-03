<?php

session_start();
require_once 'classes/Utils.php';
require_once 'functions/db.php';


// Vérification de la présence des données
if (!isset($_POST['email']) || !isset($_POST['password'])) {
    Utils::redirect('login.php');
}

// Extraction des données
[
    'email' => $email,
    'password' => $password
] = $_POST;

try {
    $pdo = getConnection();
} catch (PDOException) {
    Utils::redirect('login.php?error=');
}

$query = "SELECT * FROM users WHERE email = :email";
$connectStmt = $pdo->prepare($query);
$connectStmt->execute(['email' => $email]);

$user = $connectStmt->fetch();

// S'il n'existe pas, return early pattern
if($user === false) {
    Utils::redirect('login.php?error=');
}

// sinon, vérifier mot de passe
if(!password_verify($password, $user['password'])) {
    Utils::redirect('login.php?error=');
}

$_SESSION['userInfos'] = [
  'id' => $user['id_user'],
  'email' => $email,
  'full_name'=>$user['firstname'] . ' ' . $user['lastname']
];

Utils::redirect('account.php');
