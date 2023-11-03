<?php
require_once __DIR__ . '/../functions/db.php';
require_once __DIR__ . '/../classes/CourseLanguage.php';
require_once __DIR__ . '/../classes/CourseLevel.php';
require_once __DIR__ . '/../classes/CourseTags.php';
$pdo = getConnection();
?>
 
 <!-- icon de filter pour petit écran -->
 <div class="absolute md:hidden text-2xl cursor-pointer ml-0 pl-0" id="filterIcon">
    <svg class="w-6 h-6 text-gray-500 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 18">
      <path stroke="white" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m2.133 2.6 5.856 6.9L8 14l4 3 .011-7.5 5.856-6.9a1 1 0 0 0-.804-1.6H2.937a1 1 0 0 0-.804 1.6Z"/>
    </svg>
 </div>

<!-- menu filtrage -->
<div class="hidden md:flex flex-wrap gap-5 items-center justify-start " id="filterMenu"> 
  <!-- menu langues -->

  <ul class="style-none flex flex-wrap gap-5 items-center justify-start px-10 mb-5"> 
    <span class="text-lg">Langues : </span>     
  <?php

      $languagesDb = new CourseLanguage($pdo);
$languages = $languagesDb->getAllLanguages();
foreach($languages as $id=>$lang) { ?>
    <li>
      <span class="text-gray-100 hover:text-yellow-200 cursor-pointer"> <?php echo $lang['lang_name'] ?></span>
    </li>
  <?php } ?>  
  </ul>

  <!-- menu niveau -->
  <ul class="style-none flex flex-wrap gap-5 items-center justify-start px-10 mb-5"> 
    <span class="text-lg">Niveau : </span>     
      <?php
      $levelDb = new CourseLevel($pdo);
$levels = $levelDb->getAllLevels();
foreach($levels as $id=>$level) { ?>
        <li>
          <span class="text-gray-100 hover:text-yellow-200 cursor-pointer"> <?php echo $level['level_name'] ?></span>
        </li>
      <?php } ?>  
  </ul>
  <ul class="style-none flex flex-wrap gap-5 items-center justify-start px-10 mb-5"> 
    <span class="text-lg">Thèmes : </span>     
  <?php

$tagDb = new CourseTags($pdo);
$tags = $tagDb->getAllTags();
foreach($tags as $id=>$tag) { ?>
    <li>
      <span class="text-gray-100 hover:text-yellow-200 cursor-pointer"> <?php echo $tag['tag_name'] ?></span>
    </li>
  <?php } ?>  
  </ul>
</div>

     
<script>
  const filterIcon = document.getElementById('filterIcon');
  const filterMenu = document.getElementById('filterMenu');

  filterIcon.addEventListener('click', () => {
    filterMenu.classList.toggle('hidden');
  });
</script>     