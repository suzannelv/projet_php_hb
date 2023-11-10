<?php
require_once __DIR__ . "/../classes/MenuItem.php";

$menuItems = [
  new MenuItem('index.php', 'Accueil'),
  new MenuItem('about.php', 'A propos'),
  new MenuItem('courses.php', 'Cours'),
  new MenuItem('news.php', 'Actualités'),
  new MenuItem('contact.php', 'Contact'),
]

?>


<nav class="bg-white border-gray-200 dark:bg-gray-900">
    <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
        <a href="index.php" class="flex items-center">
            <img src="../assets/img/logo.svg" class="h-18" alt="Logo" />
        </a>
        
        <div class="items-center bg-gray-50 md:bg-transparent justify-between hidden w-full md:flex md:w-auto md:order-1 md:gap-x-16" id="navbar-user">
            <ul class="flex flex-col font-medium p-4 md:p-0 mt-4 border border-gray-100 rounded-lg md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">

                <?php
                foreach($menuItems as $item) { ?>
                  <li>
                    <a href="<?php echo $item->getUrl(); ?>" class="block py-2 pl-3 pr-4 rounded md:p-0 <?php echo $item->getCssClasses(); ?>">
                        <?php echo $item->getLabel();  ?>
                    </a>
                  </li>
                <?php } ?>
            </ul>

              <!-- search bar -->
            <form class="relative" action="search.php" method="GET">
                <div class="absolute inset-y-0 left-0 flex items-center pl-3 cursor-pointer" type="button">
                  <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
                  </svg>
                  <span class="sr-only">Search icon</span>
                </div>
                <input type="text" id="search-navbar" name="q" class="block w-full p-2 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Search...">        
            </form>
              <!--toogle button log/logout -->
            <?php if(!isset($_SESSION['userInfos'])) { ?>
              <div id="navbar-default">
                <ul class="font-medium flex flex-row justify-evenly p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:space-x-8 md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
                  <li>
                    <a href="login.php" class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 dark:text-white md:dark:text-blue-500">Connexion</a>
                  </li>
                  <li>
                    <a href="register.php" class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 dark:text-white md:dark:text-blue-500">Inscription</a>
                  </li>    
                </ul>
              </div>
            <?php } else {?>
              <div class="flex items-center md:order-2">
                  <button type="button" class="flex mr-3 text-sm bg-gray-800 rounded-full md:mr-0 focus:ring-4 focus:ring-gray-300 dark:focus:ring-gray-600" id="user-menu-button" aria-expanded="false" data-dropdown-toggle="user-dropdown" data-dropdown-placement="bottom">
                        <span class="sr-only">Open user menu</span>
                        <!-- avatar par défaut -->
                        <?php if(!isset($_SESSION['userInfos'])) { ?>
                          <img class="w-8 h-8 rounded-full" src="../assets/img/avatar.jpg" alt="user photo by default">
                        <?php } else { ?>
                          <!-- utilisateur s'est connecté, show user avatar  -->
                        <img class="w-8 h-8 rounded-full" src="../../uploads/<?php echo $_SESSION['userInfos']['avatar'] ? "../../uploads/" . $_SESSION['userInfos']['avatar'] : "../assets/img/avatar.jpg"; ?>" alt="user photo">

                      <?php } ?>
                  </button>
                  <!-- Dropdown menu -->
                  <div class="z-50 hidden my-4 text-base list-none bg-white divide-y divide-gray-100 rounded-lg shadow dark:bg-gray-700 dark:divide-gray-600" id="user-dropdown">
                        <div class="px-4 py-3">
                            <span class="block text-sm text-gray-900 dark:text-white">
                                <?php echo $_SESSION['userInfos']['first_name'] . ' ' . $_SESSION['userInfos']['first_name']; ?>
                            </span>
                            <span class="block text-sm  text-gray-500 truncate dark:text-gray-400"> 
                                <?php echo $_SESSION['userInfos']['email']; ?>
                            </span>
                        </div>
                        <ul class="py-2" aria-labelledby="user-menu-button">
                            <li>
                                <a href="account.php" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Mon compte</a>
                            </li>
                      
                            <li>
                                <a href="logout.php" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Déconnecter</a>
                            </li>
                        </ul>
                  </div>
                  <button data-collapse-toggle="navbar-user" type="button" class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="navbar-user" aria-expanded="false">
                    <span class="sr-only">Open main menu</span>
                    <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15"/>
                    </svg>
                  </button>
              </div>
            <?php } ?>    
        </div> 
    </div>
</nav>
