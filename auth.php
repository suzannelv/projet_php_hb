<?php

session_start();
require_once 'classes/Utils.php';
require_once 'functions/db.php';
require_once 'classes/AppError.php';


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
    Utils::redirect('login.php?error=' . AppError::DB_CONNECTION);
}

$query = "SELECT * FROM users WHERE email = :email";
$connectStmt = $pdo->prepare($query);
$connectStmt->execute(['email' => $email]);

$user = $connectStmt->fetch();

// S'il n'existe pas, return early pattern
if($user === false) {
    Utils::redirect('login.php?error=' . AppError::USER_NOT_FOUND);
}

// sinon, vérifier mot de passe
if(!password_verify($password, $user['password'])) {
    Utils::redirect('login.php?error=' . AppError::INVALID_CREDENTIALS);
}

$_SESSION['userInfos'] = [
  'id' => $user['id_user'],
  'email' => $email,
  'full_name'=>$user['firstname'] . ' ' . $user['lastname'],
  'avatar' =>$user['avatar_url']
];

Utils::redirect('account.php');
