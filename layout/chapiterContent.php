<?php require_once __DIR__ . '/../classes/Chapiter.php'

?>

<h3 class="text-3xl font-bold mb-8">Course programme</h3>
<div id="accordion-collapse" data-accordion="collapse">
  <?php
  foreach ($chapiterDetail as $index => $chapiter) { ?>
    <h2 id="accordion-collapse-heading-<?php echo $index + 1 ?>">
      <button type="button" class="flex items-center justify-between w-full p-5 font-medium text-left text-gray-500 border border-b-0 border-gray-200 rounded-t-xl focus:ring-2 focus:ring-gray-200 dark:focus:ring-gray-800 dark:border-gray-700 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-800" data-accordion-target="#accordion-collapse-body-<?php echo $index + 1 ?>" aria-expanded="true" aria-controls="accordion-collapse-body-<?php echo $index + 1 ?>">
        <!-- chapiter title -->
        <span>
          <?php echo $chapiter['chapiterTitle'] . ' ' . ' (' . Utils::minuteToHour($chapiter['chapiterDuration']) . ') '; ?>
        </span>
        <svg data-accordion-icon class="w-3 h-3 rotate-180 shrink-0" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
          <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5 5 1 1 5"/>
        </svg>
      </button>
    </h2>
    <div id="accordion-collapse-body-<?php echo $index + 1 ?>" class="hidden" aria-labelledby="accordion-collapse-heading-1">
      <div class="p-5 border border-b-0 border-gray-200 dark:border-gray-700 dark:bg-gray-900">
      <!-- chapiter video -->  
      <!-- Modal toggle -->
      <a href="#" data-modal-target="default-modal-<?php echo $index; ?>" data-modal-toggle="default-modal-<?php echo $index; ?>" class="font-medium text-blue-600 underline dark:text-blue-500 hover:no-underline">
        Voir vidéo
      </a>

      <!-- Main modal -->
      <div id="default-modal-<?php echo $index; ?>" tabindex="-1" aria-hidden="true" class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] max-h-full">
          <div class="relative w-full max-w-2xl max-h-full">
              <!-- Modal content -->
              <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                  <!-- Modal header -->
                  <div class="flex items-start justify-between p-4 border-b rounded-t dark:border-gray-600">
                      <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                          <?php echo $chapiter['chapiterTitle'];?>
                      </h3>
                      
                      <button type="button" class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ml-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white" data-modal-hide="default-modal-<?php echo $index; ?>">
                          <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                              <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                          </svg>
                          <span class="sr-only">Close modal</span>
                      </button>
                  </div>
                  <!-- Modal body -->
                  <div class="p-6 space-y-6">
                    <iframe width="560" height="315" class="mx-auto" src="https://www.youtube.com/embed/<?php echo $chapiter['chapiterVideoId'] ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                  </div>
              </div>
          </div>
      </div>

        <!-- chapiter menu -->
        <p class="mb-2 text-gray-500 dark:text-gray-400"> 
          <ul class="space-y-4 text-left text-gray-500 dark:text-gray-400">
            <?php
            // 换行
            $contentItem = explode('-', $chapiter['chapiterContent']);
      array_shift($contentItem);
      foreach($contentItem as $item) { ?>
              <li class="flex items-center space-x-3">
                  <svg class="flex-shrink-0 w-3.5 h-3.5 text-green-500 dark:text-green-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 16 12">
                      <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5.917 5.724 10.5 15 1.5"/>
                  </svg>
                  <span><?php echo $item ?></span>
              </li>
             <?php } ?>
          </ul> 
        </p> 
      </div>
    </div>
  <?php } ?>
</div>



