<?php

require_once 'classes/Utils.php';
require_once 'functions/db.php';
require_once 'classes/AppError.php';
require_once 'classes/Email.php';
require_once 'classes/EmailError.php';
require_once 'classes/SpamChecker.php';

if($_SERVER['REQUEST_METHOD'] !== 'POST') {
    Utils::redirect('register.php');
}

// 1. vérigier l'email


try {
    $email = new Email($_POST['email']);
    $spamChecker = new SpamChecker();
    if($spamChecker->isSpam($email)) {
        throw new InvalidArgumentException(code:EmailError::SPAM);
    }
} catch(EmptyEmailException | InvalidArgumentException $e) {
    Utils::redirect('register.php?error=' . $e->getCode());
} catch(InvalidArgumentException $e) {
    Utils::redirect('register.php?error=' . $e->getCode());
}

// 2. upload profile photo
if (isset($_FILES['user_avatar']) && $_FILES['user_avatar']['error'] === UPLOAD_ERR_OK) {

    $avatar = $_FILES['user_avatar'];
    $tmpFilename = $avatar['tmp_name'];
    // générer un nom unique
    $bytes = random_bytes(10);
    $filename = bin2hex($bytes);
    $profilePicInfo = pathinfo($avatar['name'], PATHINFO_EXTENSION);
    $filename .= '.' . $profilePicInfo;

    $destination = __DIR__ . '/uploads/' . $filename;

    if (is_uploaded_file($tmpFilename)) {
        move_uploaded_file($tmpFilename, $destination);
    }
}

// 3. connecter BDD
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
        'avatar'         => $filename
    ]);
} catch (PDOException $e) {
    Utils::redirect('register.php?error=' . AppError::DB_CONNECTION);
}

$_SESSION['userInfos'] = [
    'email' => $email,
];



Utils::redirect('registerConfirm.php?username=' . urlencode($firstname));
exit;
