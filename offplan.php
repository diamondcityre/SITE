<?php
include 'include/header.php';
$action = 'offplan';
include_once 'include/off_plan_filter.php';


//var_dump($_REQUEST);

$queryString = (!empty($_REQUEST)) ? http_build_query($_REQUEST):'';

$queryString = $action . '.php?s=1' . $queryString;

$total_records = 0;
$limitPosition = stripos($query, "LIMIT");

if ($limitPosition !== false) {
   $sql = substr($query, 0, $limitPosition);
   $result_pagination = mysqli_query($conn, $sql);
   $total_records = $result_pagination->num_rows;
}

$search_text = 'Off Plan Properties in Dubai for Sale';
if(!empty($_REQUEST["search_keyword"]))
{
   $searchNames = [];
   //foreach ($_REQUEST["search_keyword"] as $item) {
      $parts = explode(':', $_REQUEST["search_keyword"],2);
      if (count($parts) >= 2) {
         $searchNames = $parts[1];
      }
   //}
   $search_text = $searchNames." Off Plan properties";
}
?>

<head>  
    
    <title>Buy New Off-Plan Projects in Dubai | Investment & Living Properties in UAE</title> 
    <meta name="robots" content="index, follow">
    <meta charset="utf-8">  
    <meta name="author" content="diamondcityrealestate">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="title" content="Buy New Off-Plan Projects in Dubai | Investment & Living Properties in UAE" />
    <meta name="description" content="Search and buy new off-plan projects in Dubai for investments and living. Discover properties, areas, and top real estate developers in the UAE.">
    <link rel="canonical" href="https://www.diamondcityre.com/best-off-plan-projects-in-dubai" />
    <meta name="keywords" content="buy off-plan projects Dubai, Dubai real estate investment, living in Dubai, UAE properties, Dubai property search, new developments Dubai, real estate developers UAE, Dubai investments, off-plan properties UAE, Dubai living, Emaar Properties, luxury homes Dubai, Dubai real estate market, best Dubai neighborhoods, Dubai property listings, Dubai homes for sale, Dubai property investment opportunities, new Dubai projects, Dubai real estate trends, investment properties Dubai, residential properties Dubai, commercial properties Dubai, Dubai property guide, Dubai real estate news, Dubai property market analysis, top real estate agents Dubai, Dubai property buying tips">
    
    
<!-- Open Graph / Facebook -->
<meta property="og:type" content="website" />
<meta property="og:url" content="https://www.diamondcityre.com/best-off-plan-projects-in-dubai" />
<meta property="og:title" content="Buy New Off-Plan Projects in Dubai | Investment & Living Properties in UAE"/>
<meta property="og:description" content="Search and buy new off-plan projects in Dubai for investments and living. Discover properties, areas, and top real estate developers in the UAE." />
<meta property="og:image" content="https://www.diamondcityre.com/assets/img/fav/dcre.jpg" />

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image" />
<meta property="twitter:url" content="https://www.diamondcityre.com/best-off-plan-projects-in-dubai" />
<meta property="twitter:title" content="Buy New Off-Plan Projects in Dubai | Investment & Living Properties in UAE"/>
<meta property="twitter:description" content="Search and buy new off-plan projects in Dubai for investments and living. Discover properties, areas, and top real estate developers in the UAE." />
<meta property="twitter:image" content="https://www.diamondcityre.com/assets/img/fav/dcre.jpg" />
    

</head>  

<section class="pt-pb-85">
   <div class="container">
      <div class="d-flex justify-content-center justify-content-between mb-4"></div>
      <div class="row mb-1">
          <h1 class="text-sm-left text-md-center px-md-5">Discover New Prime Offplan Properties For Sale in Dubai</h1> 
         <div class="col-md-6">
             <br>
        <!--    <div class="get-touch text-black"><?= (!empty($search_text)) ? $search_text:''; ?></div> -->
            <p><?= $total_records ?> Result(s)</p>
            <br>
         </div>

         
       <!--  <h5 class="text-center px-md-5">Discover the Best Off-Plan Projects in Dubai with flexible payment plans</h5> -->

      </div>

      <div class="row">

         <?php

         if (!empty($result->num_rows))

         {

            while ($row = mysqli_fetch_array($result))

            {

               $plan_id = $row['id'];
               $title = (!empty($row['title'])) ? $row['title']:'';
                $detail_url = 'project/'.$plan_id.'/'.preg_replace('/\s+/', '-', $title);
             
             
             /*  $detail_url = 'index.php?off-plan-detail/'.$plan_id.'/'.preg_replace('/\s+/', '-', $title); */ 
               ?>

               <div class="col-lg-4 col-md-6 mb-4">

                  <div class="box-fp p-3">

                     <div class="position-relative">

                        <div class="p-3 position-absolute">

                           <!--    <button class="tags-featured p-3 text-lg-center text-sm-start">

                              DOWN PAYMENT - <?php echo $row['down_payment'] ?>%

                           </button> -->

                        </div>

                        <div>

                           <a href="<?php echo $detail_url; ?>">

                              <img src="dcity/public/assets/img/<?php echo $row['img1'] ?>" class="img-fluid">

                           </a>

                        </div>

                     </div>

                     <div class="py-md-3 py-4  px-1">

                        <div class="pb-4">

                           <div class="aed-no title-feature mb-3 mt-2">

                              <?php echo $title; ?>

                           </div>

                           <div class="off-plans"><strong> Location:</strong> <?php echo $row['location_name'] ?></div>

                           <div class="off-plans"><strong> Developer: </strong> <?php echo $row['developer_name'] ?>

                           </div>

                           <div class="off-plans"><strong> Development

                                 Type: </strong><?php echo $row['development_type'] ?>

                           </div>

                           <div class="off-plans"><strong> Completion Date: </strong>

                              <?php

                              $completionDate = date('F Y', strtotime($row['completion_dat']));

                              echo $completionDate;

                              ?>

                           </div>

                        </div>



                        <div class="mb-4">

                           <?php

                           $short_description = $row['short_description'];

                           /*if (strlen($short_description) > 100) {

                              $short_description = substr($short_description, 0, 100) . '...';

                           }

                           echo $short_description;*/



                           $words = preg_split('/\s+/', $short_description);

                           $visibleWords = implode(' ', array_slice($words, 0, 12));

                           echo $visibleWords .= (count($words) > 12) ? '...' : '';

                           ?>

                        </div>

                        <div>

                           <a href="<?php echo $detail_url; ?>" class="btn-black"

                              style="font-size:16px !important;">View Details</a>

                        </div>

                     </div>

                  </div>

               </div>

               <?php

            }

         }

         else

         {

            ?>

            <div class="col-md-6 col-lg-3 mb-4">

               <p>No Record Found!</p>

            </div>

            <?php

         }

         ?>

      </div>

      <div class="d-flex justify-content-end mt-4">

         <?php





         if (!empty($result_pagination->num_rows))

         {


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

         }

         ?>

      </div>

   </div>

</section>

<section class="pt-4">

   <div class="container pb-100">

      <div class="row justify-content-center">

         <div class="col-md-4 text-center">

            <button type="button" class="btn-black" data-bs-toggle="modal" data-bs-target="#exampleModal">BOOK A FREE

               CONSULTATION

            </button>

         </div>

      </div>

   </div>

</section>

<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script>

<?php include 'include/footer.php'; ?>

