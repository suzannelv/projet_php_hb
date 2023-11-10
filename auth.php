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
    'email'    => $email,
    'password' => $password
] = $_POST;

try {
    $pdo = getConnection();
} catch (PDOException) {
    Utils::redirect('login.php?error=' . AppError::getAppErrMsg(AppError::DB_CONNECTION));
}

$query = "SELECT * FROM users WHERE email = :email";
$connectStmt = $pdo->prepare($query);
$connectStmt->execute(['email' => $email]);

$user = $connectStmt->fetch();

// S'il n'existe pas, return early pattern
if($user === false) {
    Utils::redirect('login.php?error=' . AppError::getAppErrMsg(AppError::USER_NOT_FOUND));
}
// Si l'utilisateur est de type 1 (admin), rediriger vers la page d'admin
if ($user['type_user'] === 1) {
    Utils::redirect('./admin/index.php');
    exit;
}


// sinon, vérifier mot de passe
if(!password_verify($password, $user['password'])) {
    Utils::redirect('login.php?error=' . AppError::getAppErrMsg(AppError::INVALID_CREDENTIALS));
    exit;
};

// Si tout est en ordre, enregistrer les informations de l'utilisateur dans la session

$_SESSION['userInfos'] = [
  'id'          => $user['id_user'],
  'email'       => $email,
  'first_name'  => $user['firstname'],
  'last_name'   => $user['lastname'],
  'avatar'      => $user['avatar_url'],
  'birthday'    => $user['birthday'],
  'phoneNumber' => $user['tel'],
];
// Rediriger vers la page du compte utilisateur
Utils::redirect('account.php');
