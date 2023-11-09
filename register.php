<?php
require_once __DIR__ . "/layout/head.php";
require_once __DIR__ . "/classes/EmailError.php";
require_once __DIR__ . "/classes/AppError.php";
$email = $_GET['email'] ?? "";
?>

<main class="bg-gray-50 dark:bg-gray-900">
  <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto">
      <a href="index.php" class="flex items-center mb-6 text-2xl font-semibold text-gray-900 dark:text-white">
          <img class="w-30 h-12" src="assets/img/logo.svg" alt="logo"> 
      </a>
      <div class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
          <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
              <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white text-center">
                 Se connecter sur <span class="font-bold text-blue-600">LoLanguages</span>
              </h1>
              <!-- afficher les erreurs si l'email n'est pas valide -->
              <?php
            if (isset($_SESSION['error_message'])) {
                $error = $_SESSION['error_message']; ?>
            <div class="mb-3 text-center">
                <span class="text-red-500 bg-red-100 py-1 px-2">
                <?php $message = match ($error['code']) {
                    EmailError::EMPTY       => EmailError::getErrorMessage(EmailError::EMPTY),
                    EmailError::INVALID     => EmailError::getErrorMessage(EmailError::INVALID),
                    EmailError::DUPLICATE   => EmailError::getErrorMessage(EmailError::DUPLICATE),
                    EmailError::SPAM        => EmailError::getErrorMessage(EmailError::SPAM),
                    EmailError::MIS_MATCH   => EmailError::getErrorMessage(EmailError::MIS_MATCH),
                    AppError::FORMAT_NUMBER => AppError::getAppErrMsg(AppError::FORMAT_NUMBER),
                    AppError::DB_CONNECTION => AppError::getAppErrMsg(AppError::DB_CONNECTION),
                    default                 => 'Une erreur est survenue',
                };
                echo $message;
                ?>
                </span>
            </div>
                  <?php unset($_SESSION['error_message']);
            } ?>
              <!-- form -->
              <form class="space-y-4 md:space-y-6" action="register_process.php" method="POST" enctype="multipart/form-data">
                  <div>
                      <label for="firstname" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Votre prénom</label>
                      <input type="text" name="firstname" id="firstname" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Bonnie" required="">
                  </div>
                  <div>
                      <label for="lastname" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Votre nom</label>
                      <input type="text" name="lastname" id="lastname" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Green" required="">
                  </div>
                  <div>
                      <label for="phone" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Votre Téléphone</label>
                      <input type="tel" name="phone" id="phone" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="0600000000" required="">
                  </div>
                  <div>
                      <label for="birthday" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Date de naissance</label>
                      <input type="date" name="birthday" id="birthday" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                  </div>
                  <div>
                      <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Votre email</label>
                      <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="name@company.com" value="<?php echo $email; ?>" required>
                  </div>
                  <div>
                      <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Mot de passe</label>
                      <input type="password" name="password" id="password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                  </div>
                  <div>
                      <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Confirmer mot de passe</label>
                      <input type="password" name="confirm-password" id="confirm-password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                  </div>
                  <div>
                    <label class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" for="user_avatar">Télécharger votre profile</label>
                    <input  class="block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400" aria-describedby="user_avatar_help" id="user_avatar" name="user_avatar" type="file">
                    <div class="mt-1 text-sm text-gray-500 dark:text-gray-300" id="user_avatar_help">SVG, PNG, JPG ou GIF.</div>
                  </div>
                  <button type="submit" class="w-full text-white bg-blue-600 hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">S'inscrire</button>
                  <p class="text-sm font-light text-gray-500 dark:text-gray-400">
                      Vous avez déjà un compte ? 
                      <a href="login.php" class="font-medium text-blue-600 hover:underline dark:text-blue-500">Se connecter</a>
                  </p>
              </form>
          </div>
      </div>
  </div>
</main>

<?php
require_once __DIR__ ."/layout/foot.php";
