<?php
require_once __DIR__ . '/../functions/db.php';
require_once __DIR__ . '/../classes/CourseLanguage.php';
require_once __DIR__ . '/../classes/CourseLevel.php';
require_once __DIR__ . '/../classes/CourseTags.php';
$pdo = getConnection();
?>
 
 <!-- icon de filter pour petit écran -->
 <div class="md:hidden text-2xl cursor-pointer mb-5" id="filterIcon" >
    <img src="../assets/img/icon/filter.svg" alt="filter icon" class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" >
 </div>

<!-- menu filtrage -->
<div class="hidden md:flex flex-wrap gap-5 items-center justify-start " id="filterMenu"> 
  <form action="filter_process.php" method="POST" class="grid gap-8 sm:grid-cols-3 sm:grid-rows-1 mb-[100px]" id="filterForm">
     <!-- Language filter -->
    <div class="mb-5">
      <label for="language" class="block mb-2 text-sm font-medium text-gray-800 dark:text-white">Langues : </label>
      <select name="language" id="language" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
        <option value="">Langues</option>
        <?php
        $languagesDb = new CourseLanguage($pdo);
$languages = $languagesDb->getAllLanguages();
foreach ($languages as $id => $lang) { ?>
        <option value="<?php echo $lang['lang_name']; ?>">
          <?php echo $lang['lang_name']; ?>
        </option>
        <?php } ?>
      </select>
    </div>
 
    <!-- Level filter -->
    <div class="mb-5">
      <label for="level" class="block mb-2 text-sm font-medium text-gray-800 dark:text-white">Niveau : </label>
      <select name="level" id="level" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
        <option value="">Tous les niveaux</option>
          <?php
          $levelDb = new CourseLevel($pdo);
$levels = $levelDb->getAllLevels();
foreach ($levels as $id => $level) { ?>
          <option value="<?php echo $level['level_name']; ?>">
            <?php echo $level['level_name']; ?>
          </option>
          <?php } ?>
      </select>

    </div>

    <!-- Theme filter -->
    <div>
      <label for="theme" class="block mb-2 text-sm font-medium text-gray-800 dark:text-white">Thèmes : </label>
      <select name="theme" id="theme" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
        <option value="">Tous les thèmes</option>
        <?php

        $tagDb = new CourseTags($pdo);
$tags = $tagDb->getAllTags();
foreach ($tags as $id => $tag) { ?>
        <option value="<?php echo $tag['tag_name']; ?>">
          <?php echo $tag['tag_name']; ?>
        </option>
        <?php } ?>
      </select>
    </div>
    <input type="submit">
  </form>
</div>

     
<script>
  const filterIcon = document.getElementById('filterIcon');
  const filterMenu = document.getElementById('filterMenu');
  const filterForm = document.getElementById('filterForm');

  filterIcon.addEventListener('click', () => {
    filterMenu.classList.toggle('hidden');
  });

  // écouter event sur l'envoie d'une requête dans le filtrage
 // 在前端页面中，使用 JavaScript 发起 POST 请求到 filter_process.php
fetch('filter_process.php', {
  method: 'POST',
  body: new URLSearchParams({
    language: selectedLanguage,
    level: selectedLevel,
    theme: selectedTheme
  }),
  headers: {
    'Content-Type': 'application/x-www-form-urlencoded'
  }
})
.then(response => response.json())
.then(data => {
  // 处理返回的数据并更新页面
  // 例如，将数据展示在页面上
  // 注意：这里的代码仅为示例，实际的代码可能需要根据你的前端框架和页面结构进行修改
  updateCourseList(data);
})
.catch(error => {
  console.error('Error:', error);
});

</script>     