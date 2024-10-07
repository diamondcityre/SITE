<?php 


//formPHPmailer
include $_SERVER['DOCUMENT_ROOT'] . '/include/connection.php';
include_once $_SERVER['DOCUMENT_ROOT'] . '/include/helper/helper.php';


if (isset($_POST['submit']))
{
   $id = $_POST['subject'];
   $f_name = $_POST['f_name'];
   $email = $_POST['email'];
   $code = $_POST['code'];
   $phones = $_POST['phones'];
   $message = $_POST['message'];
   $query2 = "INSERT INTO `free_consultation` (`id`, `name`,`email`, `code`, `phone`, `message`) VALUES ('$id','$f_name','$email', '$code', '$phones', '$message')";

   $result = mysqli_query($conn, $query2);

   if ($result)
   {
      echo " <script >
                $(function(){
                    swal({icon: \"success\",title: \"Added Successfully !\",showConfirmButton: true,confirmButtonText: \"Done\",confirmButtonColor:\"#7a6fbe\",closeOnConfirm: false

}). then(function(result){
                        window.location.href = \"index.php\";
             })
                    });
            </script>
                  ";
   }
   else
   {
      echo $error = mysqli_connect_error();
      $error = mysqli_error($conn);
      echo '<script>alert("' . $error . '");</script>';
   }
}
// }



function truncate_text($text, $limit) {
    if (strlen($text) > $limit) {
        $text = substr($text, 0, $limit) . '...'; 
    }

    return $text;
}


include $_SERVER['DOCUMENT_ROOT'] . '/include/header.php';
//$id = $_GET['plan_id'];

$title = (isset($_GET['title']) ? $_GET['title'] : '');
$planId = (isset($_GET['plan_id']) ? (int)$_GET['plan_id'] : 0);

if (!empty($_GET[1]))
{
   $planId = (int)$_GET[1];
}

$title = preg_replace('/-/', ' ', $title);

$where = (!empty($planId)) ? "id = $planId" : "REPLACE(title, '-', ' ') = '".mysqli_real_escape_string($conn, $title)."'";
$qry_offplan = "SELECT * FROM off_plans WHERE $where LIMIT 1";
$sql = mysqli_query($conn, $qry_offplan);

$row = mysqli_fetch_array($sql);
$test_title = $row['description'];
$clean_text = strip_tags($test_title);
$meta_description = truncate_text($clean_text,169);


//$meta_description = htmlspecialchars($test_desp);
$id = (!empty($row['id'])) ? $row['id'] : 0;
//floor plan
$floor_plan_sql = mysqli_query($conn, "
      SELECT
         floor_plans.*,
         property_sub_types.type AS property_type_name 
      FROM
         floor_plans
         LEFT JOIN property_sub_types ON floor_plans.property_sub_type = property_sub_types.id 
      WHERE
         floor_plans.off_plan_id = $id ");
$floor_plan = [];
while ($record = mysqli_fetch_assoc($floor_plan_sql))
{
   $floor_plan[] = $record;
}

//nearby areas
$nearby_sql = mysqli_query($conn, "SELECT * FROM `prime_nearby_locations` WHERE off_plan_id = $id");
$nearby_location = [];
while ($record = mysqli_fetch_assoc($nearby_sql))
{
   $nearby_location[] = $record;
}

mysqli_close($conn);
?>

<head>  
    <title><?php echo @$row['title'] ?>  - Diamond City Real Estate</title> 
    <meta name="robots" content="index, follow">
    <meta charset="utf-8">  
    <meta name="author" content="diamondcityrealestate">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="title" content="<?php echo @$row['title'] ?> Off-plan Properties for Sale in Dubai - Diamond City Real Estate" />
    <meta name="description" content="<?php echo $meta_description; ?>">
    <link rel="canonical" href="https://www.diamondcityre.com/<?php echo @$row['title']?>" />
    
    <meta name="keywords" content="real estate agency, Best real estate,Property Expert Diamond City Real Estate, real estate dubai,Invest in real estate dubai for foreigners,is it safe to invest in dubai real estate, real estate investment companies in dubai,dubai investment property for sale">
    
    
<!-- Open Graph / Facebook -->
<meta property="og:type" content="website" />
<meta property="og:url" content="https://diamondcityre.com/<?php echo @$row['title']?>" />
<meta property="og:title" content="<?php echo @$row['title'] ?> - Off-plan Properties for Sale in Dubai | Diamond City Real Estate"/>
<meta property="og:description" content="<?php echo $meta_description; ?>" />
<meta property="og:image" content="https://www.diamondcityre.com/assets/img//fav/dcre.jpg" />

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image" />
<meta property="twitter:url" content="https://www.diamondcityre.com/<?php echo @$row['title']?>" />
<meta property="twitter:title" content="<?php echo @$row['title'] ?> - Off-plan Properties for Sale in Dubai | Diamond City Real Estate"/>
<meta property="twitter:description" content="<?php echo $meta_description; ?>" />
<meta property="twitter:image" content="https://www.diamondcityre.com/assets/img/fav/dcre.jpg" />
    

</head>  
   <style>
      @media only screen and (max-width: 600px) {
         li {
            background-color: #eee;

         }
      }

      .p2_header.sticky-header {
         position: fixed;
         left: 0;
         width: 100%;
         background-color: #ffffff; /* Change to your desired background color */
         z-index: 1000; /* Adjust the z-index as needed */
         color: white; /* Set the text color to white */
      }

      .sticky-sub-header {
         --bs-gutter-x: 1.5rem;
         --bs-gutter-y: 0;
         width: 100%;
         padding-right: calc(var(--bs-gutter-x) * .5);
         padding-left: calc(var(--bs-gutter-x) * .5);
         margin-right: auto;
         margin-left: auto
      }

      @media (max-width: 576px) {
         .sticky-sub-header {
            max-width: 540px
         }
      }

      @media (min-width: 768px) {
         .sticky-sub-header, {
            max-width: 720px
         }
      }

      @media (min-width: 992px) {
         .sticky-sub-header {
            max-width: 960px
         }
      }

      @media (min-width: 1200px) {
         .sticky-sub-header {
            max-width: 1140px
         }
      }

      @media (min-width: 1400px) {
         .sticky-sub-header {
            max-width: 1320px
         }
      }

      .nav-item a.active {
         border-bottom: 3px solid #676666;
         color: #07234b;
         font-weight: 900;
      }

      .pills-tab-sm {
         overflow-x: auto;
         white-space: nowrap;
      }

      .video-container {
         position: relative;
         width: 100%; /* Adjust the width as needed */
         max-width: 800px; /* Optional: set a maximum width */
      }

      .video-container iframe {
         /*position: absolute;*/
         top: 0;
         left: 0;
         width: 100%;
         /*height: 100%;*/
      }

      /* phone lib width */
      .iti {
         display: block !important;
      }
   </style>
   <section class="pb-100 pt-200 position-relative"
            style="background-image: url('https://www.diamondcityre.com/dcity/public/assets/img/<?php echo @$row['banner_img'] ?>'); background-size: cover; background-position: center; background-repeat: no-repeat;">
      <!-- <div id="text"></div> -->
      <div class="overlay-top"></div>
      <div class="container position-relative z-3">
         <div class="row">
            <div class="col-lg-8 mx-auto col-md-12 text-center">
               <h1 class="about-banner-h pb-3"> <?php echo @$row['title'] ?> </h1>
               <div class="d-flex flex-wrap justify-content-center">
           
           
            <a href="https://wa.link/6kbmhz" class="mb-3 me-3">

                    <button type="button" class="btn-white_2 w-100 text-center text-uppercase" data-bs-toggle="modal"
                                   data-bs-target="">
                              <i class=" me-3"></i> <span> DOWNLOAD BROCHURE</span>
                           </button>
                  </a>
                  <a href="https://wa.link/6kbmhz" class="mb-3 me-3">
                     <button type="button" class="btn-white_2 w-100 text-center text-uppercase" data-bs-toggle="modal"
                                   data-bs-target="">
                              <i class=" me-3"></i> <span>REGISTER NOW</span>
                           </button>
                  </a>
           
           
           
           <!--           
               <a href="#" class="mb-3 me-3">

                    <button type="button" class="btn-white_2 w-100 text-center text-uppercase" data-bs-toggle="modal"
                                   data-bs-target="#exampleModal">
                              <i class=" me-3"></i> <span> DOWNLOAD BROCHURE</span>
                           </button>
                  </a>
                  <a href="#" class="mb-3 me-3">
                     <button type="button" class="btn-white_2 w-100 text-center text-uppercase" data-bs-toggle="modal"
                                   data-bs-target="#exampleModal">
                              <i class=" me-3"></i> <span>REGISTER NOW</span>
                           </button>
                  </a>
                   
                   
                 
                   
                   
               <a href="#" class="mb-3 me-3">

                    <button type="button" class="btn-white" data-bs-toggle="modal" data-bs-target="#subscribeModal"
                             style="width:250px;">
                        DOWNLOAD BROCHURE
                     </button> 
                  </a>
                  <a href="#" class="mb-3 me-3">
                     <button type="button" class="btn-white" data-bs-toggle="modal" data-bs-target="#subscribeModal"
                             style="width:250px;">
                        REGISTER NOW
                     </button> 
                  </a>-->
               </div>
            </div>


         </div>
      </div>
   </section>

<?php
if (!empty($row))
{
   $payment_plan_arr = explode('/', $row['plan']);
   ?>
   <div data-spy="scroll" data-target="#pills-tab">
      <section>
         <div class="container">
            <div class="row">
               <div class="col-md-12 pt-4 d-md-none p2_header">
                  <div class="d-flex overflow-auto py-3 pills-tab-sm">
                     <div class="pe-3">
                        <a href="#details" class="sticky-m-nav active">Details</a>
                     </div>
                     <div class="pe-3">
                        <a href="#gallery" class="sticky-m-nav">Gallery </a>
                     </div>
                     <div class="pe-3">
                        <a href="#location" class="sticky-m-nav">Location </a>
                     </div>
                     <div class="pe-3">
                        <a href="#amenities" class="sticky-m-nav">Amenities</a>
                     </div>
                     <?php
                     if (!empty($floor_plan))
                     {
                        ?>
                        <div class="pe-3">
                           <a href="#floorplan" class="sticky-m-nav">Floorplan</a>
                        </div>
                        <?php
                     }
                     ?>
                     <div class="pe-3">
                        <a href="#paymentplans" class="sticky-m-nav">Prices</a>
                     </div>
                     <!-- <div class="pe-3">
                         <a href="#paymentplans" class="sticky-m-nav">Payment Plans</a>
                     </div> -->
                     <?php
                     if (!empty(trim($row['video_url'])))
                     {
                        ?>
                        <div class="pe-3">
                           <a href="#video" class="sticky-m-nav">Video</a>
                        </div>
                        <?php
                     }
                     ?>
                     <div class="pe-3">
                        <a href="#register" class="sticky-m-nav">Register</a>
                     </div>
                  </div>
               </div>
               <div class="col-12 pt-4 tabs-details d-none d-md-block p2_header">
                  <div class="gap-1 gap-md-0 nav d-flex flex-wrap" id="pills-tab">
                     <div class="nav-item" role="presentation">
                        <a href="#details" class="nav-link text-dark active">Details</a>
                     </div>
                     <div class="nav-item" role="presentation">
                        <a href="#gallery" class="nav-link text-dark">Gallery </a>
                     </div>
                     <div class="nav-item" role="presentation">
                        <a href="#location" class="nav-link text-dark">Location </a>
                     </div>
                     <div class="nav-item" role="presentation">
                        <a href="#amenities" class="nav-link text-dark">Amenities</a>
                     </div>
                     <?php
                     if (!empty($floor_plan))
                     {
                        ?>
                        <div class="nav-item" role="presentation">
                           <a href="#floorplan" class="nav-link text-dark">Floorplan</a>
                        </div>
                        <?php
                     }
                     ?>
                     <div class="nav-item" role="presentation">
                        <a href="#paymentplans" class="nav-link text-dark">Payment Plans</a>
                     </div>
                     <?php
                     if (!empty(trim($row['video_url'])))
                     {
                        ?>
                        <div class="nav-item" role="presentation">
                           <a href="#video" class="nav-link text-dark">Video</a>
                        </div>
                        <?php
                     }
                     ?>
                     <div class="nav-item" role="presentation">
                        <a href="#register" class="nav-link text-dark">Register</a>
                     </div>

                     <div class="d-none d-xxl-block ms-auto sub-header-button hidden">
                        <div class="" role="presentation">
                          https://wa.link/6kbmhz
                          
                           <a href="https://wa.link/6kbmhz">
                              <button type="button" class="btn-white me-3" data-bs-toggle="modal"
                                      data-bs-target=""
                                      style="width:241px; border: 1px solid #0b132b !important;color: #0b132b !important;">
                                 DOWNLOAD BROCHURE
                              </button>
                           </a>
                           <a href="https://wa.link/6kbmhz">
                              <button type="button" class="btn-white" data-bs-toggle="modal"
                                      data-bs-target=""
                                      style="width:240px; border: 1px solid #0b132b !important;color: #0b132b !important;">
                                 REGISTER NOW
                              </button>
                           </a>
                          
                       <!--    <a href="#">
                              <button type="button" class="btn-white me-3" data-bs-toggle="modal"
                                      data-bs-target="#subscribeModal"
                                      style="width:241px; border: 1px solid #0b132b !important;color: #0b132b !important;">
                                 DOWNLOAD BROCHURE
                              </button>
                           </a>
                           <a href="#">
                              <button type="button" class="btn-white" data-bs-toggle="modal"
                                      data-bs-target="#subscribeModal"
                                      style="width:240px; border: 1px solid #0b132b !important;color: #0b132b !important;">
                                 REGISTER NOW
                              </button>
                           </a> -->
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>

      <section>
         <div class="container">
            <div class="row">
               <div class="mt-5" id="details">
                  <div class="row">
                     <h1 class="mb-4 text-lg-start off-plan-heading"><?php echo $row['title'] ?></h1>
                     <div class="col-md-8 mb-4 mb-md-0">
                        <?php echo $row['description'] ?>
                        <div class="d-flex mt-5 d-brochure">
                           <a href="https://wa.link/6kbmhz">
                               <button type="button" class="btn-black" data-bs-toggle="modal"
                                      data-bs-target="#">DOWNLOAD BROCHURE
                              </button>
                               
                             <!-- <button type="button" class="btn-black" data-bs-toggle="modal"
                                      data-bs-target="#subscribeModal">DOWNLOAD BROCHURE
                              </button>-->
                           </a>
                        </div>
                     </div>
                     <div class="col-md-3 order-lg-3 text-lg-start">
                        <span class="text-uppercase" style="font-size: 12px;">starting price</span>
                        <h3 style="border-bottom: 1px solid #C5C5C5; color:#0B132B;"
                            class="py-3 fw-bold"><?php echo number_format($row['price']); ?> AED</h3>
                        <span class="text-uppercase" style="font-size: 12px;">Handover</span>
                        <h3 style="border-bottom: 1px solid #C5C5C5; color:#0B132B;" class="py-3 fw-bold">
                           <?php $completionDate = date('F Y', strtotime($row['completion_dat']));
                           echo $completionDate ?>
                        </h3>
                        <span class="text-uppercase" style="font-size: 12px;">Payment Plan</span>
                        <h3 style="border-bottom: 1px solid #C5C5C5; color:#0B132B;"
                            class="py-3 fw-bold">
                           <?php echo trim($payment_plan_arr[0]) . ' / ' . trim($payment_plan_arr[1]) . '' ?>
                        </h3>
                        
                          <!--- Whats app code start here-->        
                        
    <div class="appointment-view-box px-md-3 py-md-3 p-2 custom-box-shadow border-radius-2 mt-4">
                    
        <h4 class="text-white mb-4 text-center text-sm-center text-xs-center text-md-left">Need More Information?</h4>
        <div class="row">
            <div class="col-5">
                <img src="https://diamondcityre.com/dcity/public/assets/img/169892512354.png" alt="" class="img-fluid">
            </div>
            <div class="col-7 mt-3">
                <h4 class="text-uppercase">Sadaf Javaid</h4>
                <p class="text-uppercase text-white mb-3">Sales Director</p>
                    <div class=""><!-- d-xxl-none -->
                        <a href="https://wa.link/6kbmhz">
                            <div class="d-flex align-items-md-end">
                                <p class="me-md-2 me-2"><img src="https://diamondcityre.com/assets/img/phone.png" style="width: 20px;"></p>
                                    <p class="info">+971-50-2176037</p>
                            </div>
                        </a>
                          
                    </div>
            </div>
        </div>
        <div class="col-12 d-none"> <!-- d-xxl-block -->
            <a href="tel:971-400-1234" class="">
                <div class="d-flex align-items-md-end">
                    <div class="me-md-3 me-2"><img src="https://diamondcityre.com/assets/img/phone.png" style="width: 20px;">
                    </div>
                        <div class="info">+971-50-2176037</div>
                </div>
            </a>
            <div class="d-flex mt-2">
                <a href="mailto:info@Diamondcity.com">
                    <div class="d-flex align-items-md-end">
                        <div class="me-md-3 me-2">
                            <img src="https://www.diamondcityre.com/assets/img/phone.png" style="width: 20px;">
                        </div>
                        <div style="max-width: 100%;" class="info text-truncate">sadaf@diamondcityre.com</div>
                    </div>
                </a>
                             
            </div>
                        </div>
                        <div class="col-12 mt-4">
                           <a href="https://wa.link/6kbmhz">
                              <div class="btn-white text-center w-100">
                                  
                                  <h4>WhatsApp</h4></div>
                           </a>
                          
                        </div>
                     </div>
                        
                        
                          <!--- Whats app code end here -->  
                        
                        
                     </div>
                     <div class="col-lg-1 order-lg-2"></div>
                  </div>
               </div>
               <div class="mt-5 mb-3" id="gallery">
                  <div class="row mb-lg-5">
                     <h1 class="mb-4 off-plan-heading text-md-start text-center">Gallery</h1>
                     <div class="col-md-8 position-relative second-gallery mb-4 mb-md-0">
                        <img src="https://www.diamondcityre.com/dcity/public/assets/img/<?php echo $row['img1'] ?>" id="main" class="img-fluid w-100">
                        <div id="thumbnails" class="d-flex justify-content-between px-2">
                           <?php
                           for($i=1; $i<=8;$i++)
                           {
                              if(!empty($row['img'.$i]))
                              {
                                 ?>
                                 <img src="https://www.diamondcityre.com/dcity/public/assets/img/<?php echo $row['img' . $i] ?>" class="img-fluid "/>
                                 <?php
                              }
                           }
                           ?>
                           <!--<img src="dcity/public/assets/img/<?php /*echo $row['img1'] */?>" class="img-fluid active"/>
                           <img src="dcity/public/assets/img/<?php /*echo $row['img2'] */?>" class="img-fluid "/>
                           <img src="dcity/public/assets/img/<?php /*echo $row['img3'] */?>" class="img-fluid "/>
                           <img src="dcity/public/assets/img/<?php /*echo $row['img4'] */?>" class="img-fluid "/>-->
                        </div>
                        <button id="prev" class="arrow-btn position-absolute ">❮</button>
                        <button id="next" class="arrow-btn position-absolute ">❯</button>
                     </div>

                     <div class="col-lg-1 order-lg-2"></div>
                  </div>
               </div>
            </div>
         </div>
      </section>

      <section style="background: #0B132B;">
         <div class="container pt-pb-50 mt-5" id="location">
            <div class="row">
               <div class="col-md-6 pe-md-4 mb-md-0 mb-4">
                  <h1 class="mb-4 off-plan-heading text-white text-lg-start text-center"><?php echo $row['prime_title'] ?></h1>
                  <p class="text-white text-center text-lg-start"> <?php echo $row['prime_description'] ?></p>
                  <div class="row mt-5">
                     <?php
                     if (!empty($nearby_location))
                     {
                        foreach ($nearby_location as $k => $v)
                        {
                           ?>
                           <div class="col-md-6 mb-5">
                              <div class="text-center text-white">
                                 <h3 class="mb-0 "><?php echo $v['distance'] ?> minutes</h3>
                                 <span class=""><?php echo $v['nearby_location'] ?></span>
                              </div>
                           </div>
                           <?php
                        }
                     }
                     ?>
                  </div>
               </div>
               <div class="col-md-6">
                  <img src="https://www.diamondcityre.com/dcity/public/assets/img/<?php echo $row['location_img'] ?>" class="img-fluid">
                  <!-- <iframe class="w-100 h-100" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d57805.118155129174!2d55.106451021679696!3d25.10795770000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f69ce5ec8f879%3A0x6afb7ce366c0dd9c!2sDiamond%20City%20Real%20Estate!5e0!3m2!1sen!2s!4v1694446641114!5m2!1sen!2s" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
               <div id="googleMap" style="width:100%;height:400px;"></div> -->
                  <?php
                  $long = $row['longitude'];
                  $lati = $row['latitude'];
                  ?>

                  <script>
                     function myMap() {
                        var mapProp = {
                           center: new google.maps.LatLng($lati, $long),
                           zoom: 5,
                        };
                        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
                     }
                  </script>

                  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script>

               </div>
            </div>
         </div>
      </section>

      <style>
         .owl-item img {
            max-width: 100px;
            height: auto;
            /* You can also use other CSS properties to control the image appearance, like max-width, margin, etc. */
         }

         .owl-item {
            margin-right: 0px; /* Adjust the desired space between items */
         }

         .item {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            justify-content: center;
            height: 100%; /* Ensures that the item takes up the available height */
         }

         /* Center align the title */
         .item span {
            display: block;
            margin-top: 10px; /* Adjust as needed to control the space between the image and title */
         }
      </style>
      <div class="container mt-5" id="amenities">
         <div class="row">
            <h1 class="mb-4 off-plan-heading text-md-start text-center">Amenities</h1>
            <div class="col-md-12">
               <div class="owl-carousel owl-theme">

                  <!--<div class="item">
                     <img src="dcity/public/assets/img/169806381512.jpg" alt="" >
                     <span>Title one </span>
                  </div>
                  <div class="item">
                     <img src="dcity/public/assets/img/169806381512.jpg" alt="" >
                     <span>Title 2 </span>
                  </div>
                  <div class="item">
                     <img src="dcity/public/assets/img/169806381512.jpg" alt="" >
                     <span>Title 3 </span>
                  </div>
                  <div class="item">
                     <img src="dcity/public/assets/img/169806381512.jpg" alt="" >
                     <span>Title 4 </span>
                  </div>
                  <div class="item">
                     <img src="dcity/public/assets/img/169806381512.jpg" alt="" >
                     <span>Title 5 </span>
                  </div>
                  <div class="item">
                     <img src="dcity/public/assets/img/169806381512.jpg" alt="" >
                     <span>Title 6 </span>
                  </div>-->

                  <?php for ($i = 1; $i <= 6; $i++):
                     if (!empty($row["ame{$i}"]))
                     {
                        ?>
                        <div class="item">
                           <img src="https://www.diamondcityre.com/dcity/public/assets/img/<?php echo $row["ame{$i}"]; ?>" alt="">
                           <span><?php echo $row["ame_title{$i}"]; ?></span>
                        </div>

                        <?php
                     }
                  endfor; ?>

                  <!-- Add more items as needed -->
               </div>
            </div>
         </div>
      </div>
      <?php
      if (!empty($floor_plan))
      {
         ?>
         <div class="container mt-5" id="floorplan">
            <!--  <div class="row">
                  <div class="col-md-8 mb-4">
                      <h1 class="mb-4 off-plan-heading  text-md-start text-center">Floor Plans of Al Habtoor Tower</h1>
                      <input type="radio" id="age1" name="age" value="30">
                      <label for="age1" class="ps-2"> 4 BR</label><br>
                      <h5 class="my-4">Apartments features</h5>
                      <div class="row mx-auto">
                          <div class="col-lg-3 col-6  text-center mb-4">
                              <div class="apart-feature-box  py-4">
                                  <div class="d-flex gap-4 align-items-end justify-content-center apart-feature-logo">
                                      <img src="assets/img/bedrooms.png" alt="" class="img-fluid">
                                      <h2 class="mb-0">3</h2>
                                  </div>
                                  <h5>Bedrooms</h5>
                              </div>
                          </div>
                          <div class="col-lg-3 col-6  text-center  mb-4">
                              <div class="apart-feature-box  py-4">
                                  <div class="d-flex gap-4 align-items-end justify-content-center apart-feature-logo">
                                      <img src="assets/img/bathrooms.png" alt="" class="img-fluid">
                                      <h2 class="mb-0">2</h2>
                                  </div>
                                  <h5>Bathrooms</h5>
                              </div>
                          </div>
                          <div class="col-lg-3 col-6  text-center mb-4 ">
                              <div class="apart-feature-box  py-4">
                                  <div class="d-flex gap-4 align-items-end justify-content-center apart-feature-logo">
                                      <img src="assets/img/squre.png" alt="" class="img-fluid">
                                      <h2 class="mb-0">1,845</h2>
                                  </div>
                                  <h5>Square (ft)</h5>
                              </div>
                          </div>
                      </div>
                      <div class="my-5">
                          <a href="#" class="btn-black">Floor plan</a>
                          <!-- <button href="#" class="enquire-now-btn border-0">Floor plan</button>
                      </div>
                      <h5 class="">Reflection Floor Plans</h5>
                  </div>
                  <div class="col-md-4 mb-4">
                      <img src="assets/img/floor_plans.png" alt="" class="img-fluid">
                  </div>
              </div> -->
            <div class="row">
               <div class="table-responsive">
                  <table class="table  table-striped">
                     <thead>
                     <tr class="align-baseline">
                        <th scope="col" class="left-border-raduis ps-4">Floor Plan</th>
                        <th scope="col">Type</th>
                        <!--  <th scope="col">Unit Type</th> -->
                        <th scope="col">Category</th>
                        <th scope="col">Total Area</th>
                        <th scope="col">Starting prices</th>
                     </tr>
                     </thead>
                     <tbody>
                     <?php
                     if (!empty($floor_plan))
                     {
                        foreach ($floor_plan as $k => $v)
                        {
                           ?>
                           <tr class="align-baseline">
                              <th class="ps-4">
                                 <img src="https://www.diamondcityre.com/dcity/public/assets/img/<?php echo $v['img'] ?>" alt=""
                                      class="img-fluid" style="height: 80px;">
                              </th>
                              <td><?php echo ($v['type'] == "-1") ? "Studio" : $v['type'] . " Bedrooms" ?> </td>
                              <!-- <td>Coral living</td> -->
                              <td><?php echo $v['property_type_name']; ?></td>
                              <td>
                                 <?php echo (!empty($v['ask_for_area'])) ? '<a href="#register" class="nav-link text-dark">Ask For Size</a>' : formatNumber($v['total_area_sq_ft']) . ' sq. ft.'; ?>
                              </td>
                              <td><?php echo (!empty($v['ask_for_price'])) ? '<a href="#register" class="nav-link text-dark">Ask For Price</a>' : number_format($v['starting_price']) . ' AED'; ?>
                              </td>
                           </tr>
                           <?php
                        }
                     }
                     else
                        echo '<tr><td>No record to show.</td></tr>'
                     ?>

                     </tbody>
                  </table>
               </div>
            </div>
         </div>
         <?php
      }
      ?>
      <div class="container mt-5" id="paymentplans">
         <div class="row">
            <h1 class="mb-4 off-plan-heading text-md-start text-center">Payment Plans</h1>
            <div class="col-lg-3 col-md-6 ">
               <div class="mb-4 d-flex align-items-center heading-payment-box">
                  <h2 style=" color:#0B132B;" class=" fw-bold mb-0"><?php echo trim($payment_plan_arr[0]) ?>%</h2>
                  <span class=" ps-2" style="font-size: 14px;"> During Construction</span>
               </div>

               <div class="mb-4 d-flex align-items-center heading-payment-box">
                  <h2 style=" color:#0B132B;"
                      class=" fw-bold mb-0"><?php echo $payment_plan_arr[1] . '%'; ?></h2>
                  <span class=" ps-2" style="font-size: 14px;">On Handover
</span>
               </div>
               <a href="https://wa.link/6kbmhz">
                   <button type="button" class="btn-black text-center w-100 px-3" data-bs-toggle="modal"
                          data-bs-target="">DOWNLOAD BROCHURE
                  </button>
                   
                 <!-- <button type="button" class="btn-black text-center w-100 px-3" data-bs-toggle="modal"
                          data-bs-target="#subscribeModal">DOWNLOAD BROCHURE
                  </button> -->
                  <!--<div class="btn-black text-center">Download Pricing</div>-->
               </a>
            </div>

         </div>
      </div>
      <?php
      if (!empty(trim($row['video_url'])))
      {
         ?>
         <div class="container mt-5 " id="video">
            <div class="row">
               <h1 class="mb-4 off-plan-heading text-lg-start">Video</h1>
               <div class="col-xs-12 col-md-7">
                  <div class="video-container">
                     <?php
                     if ((bool)preg_match('/<iframe.*<\/iframe>/', $row['video_url']))
                     {
                        echo $row['video_url'];
                     }
                     else
                     {
                        ?>
                        <iframe width="100%" height="450" src="<?php echo $row['video_url']; ?>"
                                frameborder=allowfullscreen></iframe>
                        <?php
                     }
                     ?>
                  </div>
               </div>
            </div>
         </div>
         <?php
      }
      ?>
      <div class="container pt-pb-100 " id="register">
         <div class="row">
            <div class="col-md-6 mb-4">
               <img src="https://www.diamondcityre.com/assets/img/offplan/DCRE_2.png" alt="" class="img-fluid">
            </div>
            <div class="col-md-6 mb-4">
               <div class="box4 px-lg-5 py-md-4 p-3">
                  <h2 class="text-center py-3 h-md-20">Register your Interest</h2>
                  <form method="post" id="registerInterestForms">
                     <input type="hidden" id="subject" name="subject" value="Register Interest">
                     <div class="row">
                        <div class="col-md-12">
                           <div class="mb-3">
                              <input type="text" class="form-control" id="f_name" name="f_name" placeholder="Name" required>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-12">
                           <div class="mb-3">
                              <input type="email" class="form-control" name="email" placeholder="Email" required>
                           </div>
                        </div>
                     </div>

                     <div class="row">
                        <div class="col-md-12">
                           <div class="mb-3">
                              <input type="tel" name="phone" class="form-control" id="register_intereset_phone"
                                     style="padding: 11px 60px 11px 60px !important;"/>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-12">
                           <div class="mb-3">
                              <textarea style="height: 150px; box-shadow: 0px 0px 4px 0px rgba(0, 0, 0, 0.15) !important;" class="form-control" id="message" name="message" rows="3" placeholder="Your Message" required></textarea>
                           </div>
                        </div>

                     </div>
                     <div id="msg2"></div>
                     <button type="submit" name="submit" class=" border-0 btn-submit1 w-100 my-4 text-white text-uppercase h-20">Submit
                     </button>
                     <div id="msg_registerInterestForms"></div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>

   <section>
      <div class="container mb-5">
         <div class="row">
            <div class="col-md-8 mx-auto">
               <h5 class="text-center mb-5" style="line-height:30px;">Our dedicated team of property advisors stay ahead
                  of the market curve, ensuring our clients
                  have access to pre-release information on Dubai's most lucrative investment opportunities.
                  Subscribe below to stay update</h5>
               <div class="text-center my-5">
                  <button type="button" class="btn-black" data-bs-toggle="modal" data-bs-target="#exampleModal">BOOK A
                     FREE CONSULTATION
                  </button>
               </div>
            </div>
         </div>
      </div>
   </section>

   <script>
      //window.addEventListener('scroll', function () {
      //   var isScrolled = window.scrollY > 350;
      //   $(document).find('.p2_header').toggleClass('sticky-header', isScrolled);
      //   $('#pills-tab').toggleClass('sticky-sub-header', isScrolled);
      //   $(document).find('header.navbar-top').toggleClass('hidden', isScrolled);
      //   $(document).find('.sub-header-button').removeClass('hidden', window.scrollY > 350);
      //});

      window.addEventListener('scroll', function () {
         var isScrolled = window.scrollY > 350;

         $(document).find('.p2_header').toggleClass('sticky-header', isScrolled);
         $('#pills-tab').toggleClass('sticky-sub-header', isScrolled);
         $('.pills-tab-sm').toggleClass('sticky-sub-header', isScrolled);
         $(document).find('header.navbar-top').toggleClass('hidden', isScrolled);

         // Toggle the visibility of .sub-header-button
         if (isScrolled) {
            $(document).find('.sub-header-button').removeClass('hidden');
         } else {
            $(document).find('.sub-header-button').addClass('hidden');
         }
      });


      $(document).ready(function () {
         $('.nav-item').click(function () {
            // Remove the 'active' class from all nav-items
            $('.nav-item').find('a').removeClass('active');

            // Add the 'active' class to the clicked nav-item
            $(this).find('a').addClass('active');
         });

         const register_intereset_phone = document.querySelector("#register_intereset_phone");
         window.intlTelInput(register_intereset_phone, {
            initialCountry: "auto",
            geoIpLookup: function (callback) {
               fetch("https://ipapi.co/json")
               .then(function (res) {
                  return res.json();
               })
               .then(function (data) {
                  callback(data.country_code);
               })
               .catch(function () {
                  callback("ae");
               });
            }
         })
         register_intereset_phone.addEventListener("input", restrictToDigits);

         const registerInterestForms = document.querySelector("#registerInterestForms");
         registerInterestForms.addEventListener("submit", function (e) {
            e.preventDefault(); // Prevent the default form submission

            var valid = validatePhoneNumber(register_intereset_phone); // Call the validation function

            if(!valid)
               return;

            $.ajax({
               dataType: 'JSON',
               url: 'send.php',
               type: 'POST',
               data: $('#registerInterestForms').serialize(),
               beforeSend: function (xhr) {
                  $('.btn-submit1').html('SENDING...').attr("disabled", true);
               },
               success: function (response) {
                  if (response) {
                     console.log(response);
                     if (response['isSuccess']) {
                        $('#msg_registerInterestForms').html('<div class="alert alert-success">' + response['msg'] + '</div>');
                        $('input, textarea').val(function () {
                           return this.defaultValue;
                        });
                        setTimeout(function () {
                           //$("#exampleModa2").hide();
                           location.reload();
                        }, 2000);
                     } else {
                        $('#msg_registerInterestForms').html('<div class="alert alert-danger">' + response['msg'] + '</div>');
                     }
                  }
               },
               error: function () {
                  $('#msg_registerInterestForms').html('<div class="alert alert-danger">Errors occur. Please try again later.</div>');
               },
               complete: function () {
                  $('.btn-submit1').html('SEND').attr("disabled", false);
               }
            });

         });
      });

   </script>
   <?php
}
else
{
   ?>
   <div class="row">
      <div class="col-12" style="min-height: 20em">
         <p>No Record to show</p>
      </div>
   </div>
   <?php
}
?>

   <script>
      $(document).ready(function () {
         // Event listener to trigger the updateModalHeading function when the modal is shown
         $('#subscribeModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget);
            var buttonText = button.text().trim();
            buttonText = capitalizeFirstLetter(buttonText);
            $(".subscribeModalHeading").html(buttonText);

            var $phoneSelector = $('#subscribe_phone');
            //$phoneSelector.css('display', 'none');
            $phoneSelector.closest(".subs_phone_container").css('display', 'none');
            if (buttonText.toLowerCase() == 'register now') {
               ///$phoneSelector.css('display', 'block');
               $phoneSelector.closest(".subs_phone_container").css('display', 'block');
            }

            $('#subscribeForms').find("input[name='subject']").val(buttonText)
            //var name = $('#subscribeForms').find("input[name='subject']").val(buttonText);
            $('#subscribeForms').find("input[name='message']").val("User Request to " + buttonText);

         });
      })
   </script>
<?php include 'include/footer.php'; ?>