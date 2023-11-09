<?php require_once __DIR__ . '/layout/head.php' ?>
<main>
    <h1 class="text-4xl font-bold text-gray-700 my-10">Modifier Vos Informations</h1>
    <form method="POST" action="update_process.php">
        <div class="mb-4">
            <label for="first_name" class="block text-gray-700">Prénom</label>
            <input type="text" name="first_name" id="first_name" value="<?php echo $_SESSION['userInfos']['first_name']; ?>" class="w-full border border-gray-300 rounded p-2">
        </div>
        <div class="mb-4">
            <label for="last_name" class="block text-gray-700">Nom</label>
            <input type="text" name="last_name" id="last_name" value="<?php echo $_SESSION['userInfos']['last_name']; ?>" class="w-full border border-gray-300 rounded p-2">
        </div>
        <div class="mb-4">
            <label for="email" class="block text-gray-700">Email</label>
            <input type="email" name="email" id="email" value="<?php echo $_SESSION['userInfos']['email']; ?>" class="w-full border border-gray-300 rounded p-2">
        </div>
        <div class="mb-4">
            <label for="birthday" class="block text-gray-700">Date de Naissance</label>
            <input type="date" name="birthday" id="birthday" value="<?php echo $_SESSION['userInfos']['birthday']; ?>" class="w-full border border-gray-300 rounded p-2">
        </div>
        <div class="mb-4">
            <label for="phone_number" class="block text-gray-700">Numéro de Téléphone</label>
            <input type="text" name="phone_number" id="phone_number" value="<?php echo $_SESSION['userInfos']['phoneNumber']; ?>" class="w-full border border-gray-300 rounded p-2">
        </div>
        <button type="submit" class="px-4 py-2 bg-blue-700 text-white rounded hover:bg-blue-800">Enregistrer</button>
    </form>
</main>

<?php
require_once __DIR__ . '/layout/foot.php';
?>
