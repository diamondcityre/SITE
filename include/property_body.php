<?php
$currentOrder = isset($_REQUEST['order']) ? $_REQUEST['order'] : 'default';
$params = $_REQUEST;
unset($params['order']);
$queryString = http_build_query($params);
$queryString = $action . '.php?' . $queryString;

$total_records = 0;
$limitPosition = stripos($query, "LIMIT");
if ($limitPosition !== false) {
   $sql = substr($query, 0, $limitPosition);
   $result_pagination = mysqli_query($conn, $sql);
   $total_records = $result_pagination->num_rows;
}

$search_text = '';
if(!empty($_REQUEST["search_keyword"]))
{
   $buildingNames = [];
   foreach ($_REQUEST["search_keyword"] as $item) {
      $parts = explode(':', $item,2);
      if (count($parts) >= 2) {
         $buildingNames[] = $parts[1];
      }
   }
   $search_text = implode(', ', $buildingNames);
}
?>


<style>
   * {
      box-sizing: border-box;
   }

   #myInput {
      background-image: url('/css/searchicon.png');
      background-position: 10px 10px;
      background-repeat: no-repeat;
      width: 100%;
      font-size: 16px;
      padding: 12px 20px 12px 40px;
      border: 1px solid #ddd;
      margin-bottom: 12px;
   }

   #myTable {
      border-collapse: collapse;
      width: 100%;
      border: 1px solid #ddd;
      font-size: 18px;
   }

   #myTable th, #myTable td {
      text-align: left;
      padding: 12px;
   }

   #myTable tr {
      border-bottom: 1px solid #ddd;
   }

   #myTable tr.header, #myTable tr:hover {
      background-color: #f1f1f1;
   }
</style>

<section class="pt-pb-50">
   <div class="container">
      <div class="d-flex justify-content-center justify-content-between mb-4"></div>
      <div class="row mb-5">
         <div class="col-md-6">
            <div class="get-touch text-black">PROPERTIES TO <?php echo strtoupper(str_replace(['lease', 'buy'],['rent','sale'],$action)) ?></div>
            <?= $total_records ?> Result(s)<div class="in-dubai"> In <?= (!empty($search_text)) ? $search_text:'Dubai'; ?></div>
         </div>
         <div class="col-md-6 mt-4 mt-md-0">
            <div class="d-flex justify-content-md-end">
               <div class="d-flex my-1">
                  <span class="sort-by">Sort By: &nbsp;</span>
                  <div class="dropdown">
                     <a class="dropdown-toggle order-sort" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                        <?php
                        if ($currentOrder === 'desc') {
                           echo 'Highest Price';
                        } elseif ($currentOrder === 'asc') {
                           echo 'Lowest Price';
                        } else {
                           echo 'Default Order';
                        }
                        ?>
                     </a>
                     <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                        <li class="<?= $currentOrder === 'desc' ? 'active' : '' ?>">
                           <a class="dropdown-item" href="<?= $queryString ?>&order=desc">Highest Price</a>
                        </li>
                        <li class="<?= $currentOrder === 'asc' ? 'active' : '' ?>">
                           <a class="dropdown-item" href="<?= $queryString ?>&order=asc">Lowest Price</a>
                        </li>
                        <!-- <li><a class="dropdown-item" href="#">Newly Listed</a></li> -->
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="row">         <?php if (!empty($result->num_rows)) 
         {
            while ($row = mysqli_fetch_array($result))
            {
               //var_dump($row);
               $p_id = $row['id']; 
               $title = $row['title'];
                        $title = str_replace(' | ', '-', $title);
                        $title = str_replace(' ', '', $title);
               ?>
              <div class="col-md-6 col-lg-3 mb-4"><a href="https://www.diamondcityre.com/sell/<?php echo $row['id']; ?>/<?php echo $title; ?>"">
                     <div class="box-fp">
                        <div class="p-3 img-fp position-relative"
                             style="background-image: url('dcity/public/assets/img/<?php echo $row['img1'] ?>'); background-size: cover;">
                          
                        </div>
                        <div class="p-3">
                           <div class="aed-no"><?php echo number_format($row['price']) ?> <span class="aed"> AED</span>
                           </div>
                           <div class="d-flex my-2">
                              <div class="d-flex">
                                 <div class="box-fp-no">
                                    <?php
                                    if($row['bed_rooms'] == "-1")
                                    {
                                       echo '<div style="width: 23px; height: 23px;"> Studio </div>';
                                    }
                                    else
                                    {
                                       echo $row['bed_rooms'];
                                       echo '<span> <img src="assets/img/bedrooms.png " style="width: 23px; height: 23px;"> </span><br>';
                                    }
                                    ?>
                                    <span class="box-fp-sub"> Beds</span>
                                 </div>
                                 <div class="box-fp-no ms-4"><?php echo $row['bath_rooms'] ?> <span> <img
                                             src="assets/img/bathrooms.png" style="width: 23px; height: 23px;"> </span>
                                    <br><span class="box-fp-sub"> Baths</span></div>
                                 <div class="box-fp-no ms-4"><?php echo number_format($row['measurements']); ?>
                                    <span> <img src="assets/img/squre.png"
                                                style="width: 23px; height: 23px;"> </span><br><span class="box-fp-sub"> Square (ft)</span>
                                 </div>
                              </div>
                           </div>
                           <h6 class="h-35"><?php echo $row['title']; ?></h6></div>
                     </div>
                  </a></div>



               <?php

            }

         }

         else
         {
            ?> 

            <div class="col-md-6 col-lg-3 mb-4"><p>No Record Found..!</p></div>          <?php } ?>
      </div> 












      <div class="d-flex justify-content-end mt-4">

         <?php

         if (!empty($result_pagination->num_rows))

         {

            $total_records = $result_pagination->num_rows;

            $total_page = ceil($total_records / $limit);



            if ($page > 1)

            {

               $prevPage = $page - 1;

               ?>

               <a href="<?= "{$queryString}&page={$prevPage}" ?>" style="color: #0B132B">

                  <div class="ps-3"><i class="fa fa-arrow-left pe-md-3"></i></div>

               </a>

            <?php }



            for ($i = 1; $i <= $total_page; $i++)

            {

               $active = ($i == $page) ? 'pagination-no-active' : '';

               $textColor = ($active == '') ? 'style="color: #0B132B"' : '';

               ?>

               <a href="<?= "{$queryString}&page={$i}" ?>">

                  <div class="mx-1 pagination-no <?= $active ?>" <?= $textColor ?>>

                     <?= $i ?>

                  </div>

               </a>

            <?php }



            if ($total_page > $page)

            {

               $nextPage = $page + 1;

               ?>

               <a href="<?= "{$queryString}&page={$nextPage}" ?>" style="color: #0B132B">

                  <div class="ps-3"><i class="fa fa-arrow-right pe-3"></i></div>

               </a>

               <?php

            }

            echo '</div>';
         }?>
      </div>










      <!--<div class="d-flex justify-content-end mt-4">-->
      <?php /*$sql2 = "SELECT * FROM properties where tags = '$action'";         $result2 = mysqli_query($conn, $sql2);         if (mysqli_num_rows($result2) > 0) {            $total_records = mysqli_num_rows($result2);            $total_page = ceil($total_records / $limit);            if ($page > 1) { */ ?><!--               <a href="<?php /*echo $action */ ?>.php?page=<?php /*echo ($page - 1) */ ?>" style="color:#0B132B">                  <div class="ps-3"><i class="fa fa-arrow-left pe-md-3"></i></div>               </a>            <?php /*}            for ($i = 1; $i <= $total_page; $i++) {               if ($i == $page) {                  $active = 'pagination-no-active';               } else {                  $active = '';               }               */ ?>               <a href="<?php /*echo $action */ ?>.php?page=<?php /*echo $i */ ?>">                  <div class="mx-1 pagination-no <?php /*echo $active */ ?>" <?php /*if ($active == null) { */ ?> style="color:#0B132B" <?php /*} */ ?>>                     <?php /*echo $i */ ?>                  </div>               </a>            <?php /*}            if ($total_page > $page) { */ ?>               <a href="<?php /*echo $action */ ?>.php?page=<?php /*echo ($page + 1) */ ?>" style="color:#0B132B">                  <div class="ps-3"><i class="fa fa-arrow-right pe-3"></i></div>               </a>            --><?php /*}         }*/ ?>
      <!--</div>-->   </div>
</section><!--<section class="pt-pb-100" style="background: #0B132B;">   <div class="container">      <div class="text-center"><h2 class="text-white recomendition mb-5">FEATURED PROPERTIES</h2></div>      <!-- Add your featured properties here   </div></section>-->
<section class="pt-5 mt-5">
   <div class="container pb-100">
      <div class="row justify-content-center">
         <div class="col-lg-6 col-sm-12 text-center">
            <button type="button" class="btn-black" data-bs-toggle="modal" data-bs-target="#exampleModal">BOOK A FREE
               CONSULTATION
            </button>
         </div>
      </div>
   </div>
</section>