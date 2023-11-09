<?php
$svgEl = '
<div class="z-10 flex items-center justify-center w-6 h-6 bg-blue-100 rounded-full ring-0 ring-white dark:bg-blue-900 sm:ring-8 dark:ring-gray-900 shrink-0">
  <svg class="w-2.5 h-2.5 text-blue-800 dark:text-blue-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
    <path d="M20 4a2 2 0 0 0-2-2h-2V1a1 1 0 0 0-2 0v1h-3V1a1 1 0 0 0-2 0v1H6V1a1 1 0 0 0-2 0v1H2a2 2 0 0 0-2 2v2h20V4ZM0 18a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8H0v10Zm5-8h10a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2Z"/>
  </svg>
  </div>
<div class="hidden sm:flex w-full bg-gray-200 h-0.5 dark:bg-gray-700"></div>';
?>
<section class="max-w-screen-lg mx-auto">
  <h2 class="text-3xl font-bold py-8 my-10 text-center">Actualités</h2>
  
  <ol class="items-center sm:flex">
      <li class="relative mb-6 sm:mb-0" data-aos="zoom-in" data-aos-duration="2000">     
          <div class="mt-3 sm:pr-8">
              <img src="https://img.freepik.com/photos-gratuite/gros-plan-femme-classe_23-2148888812.jpg?size=626&ext=jpg" alt="">
              <div class="flex items-center my-4">
                <?php echo $svgEl; ?>
              </div>
              <time class="block mb-2 text-sm font-normal leading-none text-gray-400 dark:text-gray-500">31 octobre 2023</time>
              <h3 class="text-lg font-semibold text-gray-900 dark:text-white">Vers un avenir plus sain : se former, c'est s'élever ensemble</h3>
              <p class="text-base font-normal text-gray-500 dark:text-gray-400">Dans le monde complexe du XXIe siècle où la santé et l'éthique se croisent, voici trois formations qui offrent des perspectives sur les enjeux médicaux, environnementaux et sociétaux.</p>
          </div>
      </li>
      <li class="relative mb-6 sm:mb-0" data-aos="zoom-in" data-aos-duration="2000">
          
          <div class="mt-3 sm:pr-8">
              <img src="https://img.freepik.com/photos-gratuite/femme-au-travail-ayant-appel-video-ordinateur-portable_23-2148902263.jpg?size=626&ext=jpg" alt="">
              <div class="flex items-center my-4">
                <?php echo $svgEl; ?>
              </div>
              <time class="block mb-2 text-sm font-normal leading-none text-gray-400 dark:text-gray-500">12 octobre 2023</time>
              <h3 class="text-lg font-semibold text-gray-900 dark:text-white">Comment cultiver ses pratiques pédagogiques ?</h3>
              <p class="text-base font-normal text-gray-500 dark:text-gray-400">Filières professionnelles, psychologie et formation de tuteurs : découvrez trois formations en ligne à destination des enseignantes et enseignants mais aussi des tutrices et tuteurs.</p>
          </div>
      </li>
      <li class="relative mb-6 sm:mb-0" data-aos="zoom-in" data-aos-duration="2000">     
          <div class="mt-3 sm:pr-8">
              <img src="https://img.freepik.com/photos-gratuite/gros-plan-femme-classe_23-2148888812.jpg?size=626&ext=jpg" alt="" class="mt-10">
              <div class="flex items-center my-4">
                <?php echo $svgEl; ?>
              </div>
              <time class="block mb-2 text-sm font-normal leading-none text-gray-400 dark:text-gray-500">9 octobre 2023</time>
              <h3 class="text-lg font-semibold text-gray-900 dark:text-white">5 raisons de suivre la formation «Éducation à la Citoyenneté Mondiale»</h3>
              <p class="text-base font-normal text-gray-500 dark:text-gray-400">Comprendre ce monde, appréhender toute sa complexité et y prendre sa place en tant que citoyen-ne, tels sont souvent les objectifs de l'éducation à la citoyenneté mondiale.</p>
          </div>
      </li>
  </ol>
  <div class="text-center">
    <a href="news.php" class="inline-flex items-center px-3 py-2 my-10 text-sm font-medium text-center text-white bg-blue-400 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
       Savoir plus
      <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
      </svg>
    </a>
  </div>
</section>
