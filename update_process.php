<?php

require_once __DIR__ . '/layout/head.php';
require_once __DIR__ . '/functions/db.php';
require_once __DIR__ . '/classes/Utils.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $pdo = getConnection();
    // mise à jour les info
    $query = "UPDATE users SET firstname = :first_name, lastname = :last_name, email = :email, birthday = :birthday, tel = :phone_number WHERE id_user = :user_id";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam('first_name', $_POST['first_name']);
    $stmt->bindParam('last_name', $_POST['last_name']);
    $stmt->bindParam('email', $_POST['email']);
    $stmt->bindParam('birthday', $_POST['birthday']);
    $stmt->bindParam('phone_number', $_POST['phone_number']);
    $stmt->bindParam('user_id', $_SESSION['userInfos']['id']);
    $stmt->execute();
} ?>

<main class="prose mx-auto mt-20">
    <h1><i class="fa-regular fa-face-laugh-wink text-yellow-400"></i> Modification effectuée</h1>

    <a href="account.php" class="hover:underline hover:text-blue-600"> Retourner à mon compte</a>
</main>

<?php require_once __DIR__ . '/layout/foot.php';
