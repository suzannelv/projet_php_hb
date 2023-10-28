<?php

require_once 'classes/Utils.php';
require_once 'functions/db.php';
require_once 'classes/AppError.php';

if($_SERVER['REQUEST_METHOD'] !== 'POST') {
    Utils::redirect('register.php');
}

if (isset($_FILES['user_avatar']) && $_FILES['user_avatar']['error'] === UPLOAD_ERR_OK) {
    $avatar = $_FILES['user_avatar'];
    $tmpFilename = $avatar['tmp_name'];

    if (is_uploaded_file($tmpFilename)) {
        move_uploaded_file($tmpFilename, __DIR__ . '/uploads/' . $avatar['name']);
    }
}

try {
    $pdo = getConnection();
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $phoneNumber = $_POST['phone'];
    $birthday = $_POST['birthday'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirmPassword = $_POST['confirm-password'];
    $user_avatar = $avatar['name'];
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    // préparer une requête pour insérer un novueau utilisateur dans la base de données

    $query  = "INSERT INTO users (`firstname`, `lastname`, `email`, `password`, `birthday`, `date_create`, `tel`, `avatar_url`) VALUES (:first_name, :last_name, :email, :hashedPassword, :birthday, NOW(), :phoneNumber, :avatar)";

    $stmtInsert = $pdo->prepare($query);
    $stmtInsert->execute([
        'first_name'     => $firstname,
        'last_name'      => $lastname,
        'email'          => $email,
        'hashedPassword' => $hashedPassword,
        'birthday'       => $birthday,
        'phoneNumber'    => $phoneNumber,
        'avatar'         => $user_avatar
    ]);
} catch (PDOException $e) {
    Utils::redirect('register.php?error=' . AppError::DB_CONNECTION);
}

$_SESSION['userInfos'] = [
    'email' => $email
];

Utils::redirect('account.php');
