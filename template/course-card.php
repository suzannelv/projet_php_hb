<?php
foreach ($courseDetail as $item) { ?>
  
<div class="w-full h-[480px] max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700 relative" data-aos="fade-up"
     data-aos-duration="2000">
     <!-- tag sur le niveau des cours --> 
    <span class="absolute top-0 left-0 text-sm font-medium mr-2 px-2.5 py-0.5 rounded <?php echo $item['level']['level_bg_color'] . " " . $item['level']['level_text_color']; ?> ">
        <?php echo $item['level']['level_name']; ?>
    </span>

     <!-- couverture des cours -->
    <a href="#">
        <img class="p-0 rounded-t-lg h-[230px]" src="<?php echo $item['coverImg']; ?>" alt="<?php echo $item['courseName'] ?>" />
    </a>

    <div class="px-5 pb-5">
      <!-- tag des cours -->
        <div class="text-start my-3 gap-1 flex flex-wrap">
            <?php
            foreach ($item['tags'] as $tag) { ?>
             <span class="text-sm font-medium px-2.5 py-0.5  rounded <?php echo $tag['tag_bg_color'] . ' ' . $tag['tag_text_color']; ?>"> 
                <?php echo $tag['tag_name']; ?>
             </span>
                <?php } ?>
        </div>

       <!-- title de cours -->
   
        <h5 class="text-2xl text-start font-bold tracking-tight text-gray-900 dark:text-white"><?php echo $item['courseName'] ?></h5>
   
        <div class="flex items-center justify-between">
            <!-- revoir le calcul total de cours dans les chapitres  -->
            <span class="text-md font-semibold text-gray-900 
            dark:text-white">Duration : <?php echo "20h" ?></span>

            <a href="courseDetail.php?id=<?php echo $item['courseId'] ?>" class="absolute right-0 bottom-0 mr-2 mb-2 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800 hover:scale-x-105 hover:duration-300">Commencer</a>
        </div>
    </div>
</div>

<?php } ?>



