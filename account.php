<?php
$pageTitle = "Mon compte";
require_once __DIR__ . "/layout/head.php";
require_once __DIR__ . "/classes/Course.php";
require_once __DIR__ . "/functions/db.php";

$pdo = getConnection();
$wishlistCourses = new Course($pdo);
$userWishlistCourses = $wishlistCourses->getWishlistCourses($_SESSION['userInfos']['id']);

?>

<main class="max-w-6xl mx-auto">
    <h1 class="text-4xl font-bold text-gray-700 my-10">Bienvenue <?php echo $_SESSION['userInfos']['first_name'] . ' '. $_SESSION['userInfos']['last_name'] ?> ! </h1>
    <div class="mb-4 border-b border-gray-200 dark:border-gray-700">
        <ul class="flex flex-wrap -mb-px text-sm font-medium text-center" id="default-tab" data-tabs-toggle="#default-tab-content" role="tablist">
            <li class="mr-2" role="presentation">
                <button class="inline-block p-4 border-b-2 rounded-t-lg" id="profile-tab" data-tabs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Profile</button>
            </li>
            <li class="mr-2" role="presentation">
                <button class="inline-block p-4 border-b-2 rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300" id="viewed-tab" data-tabs-target="#viewed" type="button" role="tab" aria-controls="viewed" aria-selected="false">Récemment vu</button>
            </li>
            <li class="mr-2" role="presentation">
                <button class="inline-block p-4 border-b-2 rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300" id="wishlist-tab" data-tabs-target="#wishlist" type="button" role="tab" aria-controls="wishlist" aria-selected="false">List de voeux</button>
            </li>
        </ul>
    </div>
    <div id="default-tab-content">
        <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            
            <div class="w-full mx-auto max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                <div class="flex flex-col items-center pb-10 justify-center">
                    <img class="w-24 h-24 mb-3 mt-6 rounded-full shadow-lg" 
                         src="<?php echo $_SESSION['userInfos']['avatar'] ? "uploads/" . $_SESSION['userInfos']['avatar'] : "assets/img/avatar.jpg"; ?>" 
                         alt="<?php echo $_SESSION['userInfos']['first_name'] . ' '. $_SESSION['userInfos']['last_name'] ?>"/>
                
                    <h5 class="mb-1 text-xl font-medium text-gray-900 dark:text-white">
                        <?php echo $_SESSION['userInfos']['first_name'] . ' '. $_SESSION['userInfos']['last_name']; ?>
                    </h5>

                    <div class="flex flex-col justify-center items-center">
                        <span class="text-sm text-gray-500 dark:text-gray-400">
                            <?php echo $_SESSION['userInfos']['email']; ?>
                        </span>

                        <span class="text-sm text-gray-500 dark:text-gray-400">
                            Date de naissane: <?php echo $_SESSION['userInfos']['birthday']; ?>
                        </span> 

                        <span class="text-sm text-gray-500 dark:text-gray-400">
                            Numéro de téléphne: <?php echo $_SESSION['userInfos']['phoneNumber']; ?>
                        </span>
                        <a href="updateInfo.php" type="button" class="mt-5 px-3 py-2 text-sm font-medium text-center inline-flex items-center text-white bg-yellow-500 rounded-lg hover:bg-yellow-600 focus:ring-4 focus:outline-none focus:ring-yellow-300 dark:bg-yellow-600 dark:hover:bg-yellow-700 dark:focus:ring-yellow-800">
                            <i class="fa-solid fa-cat mr-2"></i>
                            Modifier
                        </a>
                    </div>
                </div>
            </div>

        </div>
        <!-- récemment vu -->
        <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="viewed" role="tabpanel" aria-labelledby="viewed-tab">  
            <a href="#" class="w-full flex flex-col items-center bg-white border border-gray-200 rounded-lg shadow md:flex-row hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700">
            <img class="object-cover rounded-t-lg h-60 w-[500px] md:rounded-none md:rounded-l-lg" src="https://img.freepik.com/photos-gratuite/tout-monde-sourit-ecoute-groupe-personnes-lors-conference-affaires-dans-salle-classe-moderne-pendant-journee_146671-16288.jpg?w=996&t=st=1699039955~exp=1699040555~hmac=283d7b81329edc4fdc7f09adeb2996f02746d91fff7dc9d292da6b080421cdc1" alt="">
            <div class="flex flex-col justify-between p-10 leading-normal">
                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">courses name</h5>
                <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">date</p> 
            </div>
            </a>
        </div>
        
       <!-- liste de voeux -->
        <div class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800" id="wishlist" role="tabpanel" aria-labelledby="wishlist-tab">
            <?php

            foreach ($userWishlistCourses as $course) { ?>
                <div  class="relative w-full flex flex-col my-5 items-center bg-white border border-gray-200 rounded-lg shadow md:flex-row hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700">
                    <img class="object-cover rounded-t-lg h-auto w-[500px] md:rounded-none md:rounded-l-lg" src="<?php echo $course['coverImg']; ?>" alt="<?php echo $course['courseName']; ?>">
                    <div class="flex flex-col justify-between p-10 leading-normal">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white"><?php echo $course['courseName']; ?></h5>
                        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400"><?php echo $course['dateOnline']; ?></p>
                    </div>
                    <a href="courseDetail.php?id=<?php echo $course['courseId']; ?>" class="absolute end-5 bottom-5 hover:underline hover:text-blue-500">Voir le cours</a>
                </div>
            <?php } ?>
        </div>
    </div>
</main>

<?php
require_once __DIR__ ."/layout/foot.php";
