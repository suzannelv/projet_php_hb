<?php
require_once __DIR__ . "/layout/head.php";
?>

<main class="bg-gray-50 dark:bg-gray-900">
  <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
      <a href="index.php" class="flex items-center mb-6 text-2xl font-semibold text-gray-900 dark:text-white">
          <img class="w-30 h-12" src="assets/img/logo.svg" alt="logo"> 
      </a>
      <div class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
          <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
              <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white text-center">
                 Se connecter sur <span class="font-bold text-blue-600">LoLanguages</span>
              </h1>
              <form class="space-y-4 md:space-y-6" action="auth.php" method="POST">
                  <div>
                      <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Votre email</label>
                      <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="name@company.com" required="">
                  </div>
                  <div>
                      <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Mot de passe</label>
                      <input type="password" name="password" id="password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-600 focus:border-blue-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                  </div>
                  <!-- affichage d'erreur si le mot de passe est incorrect -->
                  <span class="bg-red-100 text-red-800 text-xs font-medium mr-2 mt-2 px-2.5 py-0.5 rounded dark:bg-red-900 dark:text-red-300">
                    <?php if (isset($_GET['error'])) {
                        echo $_GET['error'];
                    } ?>
                  </span>

                  <div class="flex items-center justify-between">
                      <div class="flex items-start">
                          <div class="flex items-center h-5">
                            <input id="remember" aria-describedby="remember" type="checkbox" class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-blue-300 dark:bg-gray-700 dark:border-gray-600 dark:focus:ring-blue-600 dark:ring-offset-gray-800" required="">
                          </div>
                          <div class="ml-3 text-sm">
                            <label for="remember" class="text-gray-500 dark:text-gray-300">Mémorisez-moi</label>
                          </div>
                      </div>
                      <a href="#" class="text-sm font-medium text-blue-600 hover:underline dark:text-blue-500">Mot de passe oublié ?</a>
                  </div>
                  <button type="submit" class="w-full text-white bg-blue-600 hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Se connecter</button>
                  <p class="text-sm font-light text-gray-500 dark:text-gray-400">
                      Vous n'avez pas encore le compte ? 
                      <a href="register.php" class="font-medium text-blue-600 hover:underline dark:text-blue-500">S'inscrire</a>
                  </p>
              </form>
          </div>
      </div>
  </div>
</main>

<?php
require_once __DIR__ ."/layout/foot.php";
require_once __DIR__ ."/layout/footer.php";
