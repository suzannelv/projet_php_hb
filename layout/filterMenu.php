<?php
require_once __DIR__ . "/../data/filterMenuItem.php"
?>

<div class="text-center mx-auto relative">
  <!-- icon de filter pour petit écran -->
  <div class="absolute end-0 md:hidden text-2xl cursor-pointer ml-0 pl-0" id="filterIcon">
    <svg class="w-6 h-6 text-gray-500 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 18">
      <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m2.133 2.6 5.856 6.9L8 14l4 3 .011-7.5 5.856-6.9a1 1 0 0 0-.804-1.6H2.937a1 1 0 0 0-.804 1.6Z"/>
    </svg>
  </div>
  <!-- menu filtrage -->
  <div class="hidden md:flex flex-wrap gap-5 items-center justify-start" id="filterMenu">
   <?php foreach($filterMenuItem as $key=>$item) { ?>
    <ul class="style-none flex flex-wrap gap-5 items-center justify-start px-10 mb-5">
      <li>
        <span class="text-lg font-semibold"><?php echo $key ?></span>
      </li>
      <?php foreach($item as $option) {?>
        <li class="hover:text-slate-400" data-category="<?php echo $key ?>" data-value="<?php echo $option ?>"> <?php echo $option ?> </li>
      <?php } ?>
    </ul>
  <?php } ?>  
   </div>
</div>

<script>
  const filterIcon = document.getElementById('filterIcon');
  const filterMenu = document.getElementById('filterMenu');

  filterIcon.addEventListener('click', () => {
    filterMenu.classList.toggle('hidden');
  });
</script>
