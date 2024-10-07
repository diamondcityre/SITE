<?php include 'include/header.php'; ?>

<?php

function truncate_text($text, $limit) {
    if (strlen($text) > $limit) {
        $text = substr($text, 0, $limit) . '...'; 
    }

    return $text;
}



$url = rtrim($_SERVER['REQUEST_URI'], '/');
$parts = explode('/', $url);

$id = null;
foreach ($parts as $part) {
    if (is_numeric($part)) {
        $id = $part;
        break;
    }
}

if (!empty($id)) {
    $sql = mysqli_query($conn, "SELECT * FROM gallery_images WHERE property_id = $id LIMIT 1");
    $row = mysqli_fetch_array($sql);

    $property_sql = mysqli_query($conn, "SELECT * FROM properties WHERE id = $id");
    $property = mysqli_fetch_array($property_sql);
    if($property){
        
    
    $descrip = $property['description'];
    if(!empty($descrip) && $id > 15){
        $descriptio = strip_tags($descrip);
        $meta_description = truncate_text($descriptio,169);
    }
    else{
        $descriptio = "Off-plan Properties for Sale in Dubai: Hottest and Newest Projects - Diamond City Real Estate";
    }
    }
    else{
        $descriptio = "Off-plan Properties for Sale in Dubai: Hottest and Newest Projects - Diamond City Real Estate";
    }
    
    
} else {
    include 'sell.php'; 
    exit; 
}
?>



<head>  
    
    <title><?php echo @$property['title'] ?>  - Diamond City Real Estate</title> 
    <meta name="robots" content="index, follow">
   
    <meta charset="utf-8">  
    <meta name="author" content="diamondcityrealestate">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="title" content="<?php echo @$property['title'] ?> Off-plan Properties for Sale in Dubai: Hottest and Newest Projects - Diamond City Real Estate" />
    <meta name="description" content="<?php echo $meta_description; ?>">
    <link rel="canonical" href="https://diamondcityre.com/buy.php" />
    
    <meta name="keywords" content="real estate agency, Best real estate,Property Expert Diamond City Real Estate, real estate dubai">

    

</head>  
<style>

   .apart-feature-box img {

      width: 25px;

   }

</style>

<section class="pt-pb-50" style="background-color: #4F4F4F;" id="section1"></section>
<?php
if(!empty($property))
{ ?>
<section class="my-2">

   <!-- Add ( data-bs-spy="scroll" data-bs-target="#navbar-example") for reply spy active -->

   <div class="container">

      <div class="row">

         <div class="col-md-12">
            <h2 class="py-4 mb-0">
               <a href="lease.php" class="pe-3" style="color: #404040;"><i class="fa fa-arrow-left" aria-hidden="true"></i></a><?php echo $property['title'] ?>
            </h2>
         </div>



            <div class="col-12 col-xl-8 position-relative">
               <img src="https://www.diamondcityre.com/dcity/public/assets/img/<?php echo @$row['image'] ?>" id="main" class="img-fluid w-100" style="margin-top: 0px;"/>
               <div id="thumbnails" class="d-flex justify-content-between pe-2" style="overflow-x: auto" >
                  <?php
                  for($i=1; $i<=8;$i++)
                  {
                     if(!empty($property['img'.$i]))
                     {
                        ?>
                        <img src="https://www.diamondcityre.com/dcity/public/assets/img/<?php echo $property['img' . $i] ?>" class="img-fluid "/>
                        <?php
                     }
                  }
                  ?>
                  <!--<img src="dcity/public/assets/img/<?php /*echo $property['img1'] */?>" class="img-fluid "/>
                  <img src="dcity/public/assets/img/<?php /*echo $property['img2'] */?>" class="img-fluid "/>
                  <img src="dcity/public/assets/img/<?php /*echo $property['img3'] */?>" class="img-fluid "/>
                  <img src="dcity/public/assets/img/<?php /*echo $property['img4'] */?>" class="img-fluid "/>
                  <img src="dcity/public/assets/img/<?php /*echo $property['img5'] */?>" class="img-fluid "/>-->
                  <!-- <img src="assets/img/slider-bed-pic3.jpg" class="img-fluid " /> -->
                  <!-- <img src="assets/img/slider-bed-pic4.jpg" class="img-fluid " /> -->
                  <!-- <img src="assets/img/slider-bed-pic5.jpg" class="img-fluid " /> -->
                  <!-- <img src="assets/img/slider-bed-pic6.jpg" class="img-fluid " /> -->

               </div>

               <button id="prev" class="arrow-btn position-absolute">❮</button>
               <button id="next" class="arrow-btn position-absolute">❯</button>
            </div>



         <div class="col-12 col-xl-4">
            <div class="row">
               <div class="col-xl-12 col-lg-12 mb-3 mt-3 mt-xl-0">
                  <div class="py-md-4 p-3 custom-box-shadow border-radius-10">
                     <div class="mb-5 d-flex justify-content-between pb-4 align-items-center" style="border-bottom: 1px solid #B0B0B0;">
                        <h5><b><?php echo number_format($property['price']) ?></b> AED</h5>
                        <a href="about.php" class="btn-black">For <?php echo $property['tags'] ?></a>
                     </div>
                     <?php
                     $is_studio = ($property['bed_rooms'] == "-1") ? true:false;
                     ?>
                     <div class="row ">
                        <div class="col-4 text-center">
                           <div class="apart-feature-box py-3">
                              <div class="d-flex gap-<?php echo ($is_studio) ? 1:4 ?> align-items-end justify-content-center apart-feature-logo" style="<?php echo ($is_studio) ? '' :'' ?>">
                                 <img src="https://www.diamondcityre.com/assets/img/bedrooms.png" alt="" class="img-fluid">
                                 <?php
                                 if($property['bed_rooms'] == "-1")
                                    echo '<h5 class="mb-0">Studio</h5>';
                                 else
                                    echo '<h5 class="mb-0">'.$property['bed_rooms'].'</h5>';
                                 ?>
                              </div>
                              <h6>Bedrooms</h6>
                           </div>
                        </div>
                        <div class="col-4 text-center">
                           <div class="apart-feature-box py-3">
                              <div class="d-flex gap-4 align-items-end justify-content-center apart-feature-logo">
                                 <img src="https://www.diamondcityre.com/assets/img/bathrooms.png" alt="" class="img-fluid">
                                 <h5 class="mb-0"><?php echo $property['bath_rooms'] ?></h5>
                              </div>
                              <h6>Bathrooms</h6>
                           </div>
                        </div>
                        <div class="col-4 text-center">
                           <div class="apart-feature-box py-3">
                              <div class="d-flex gap-2 align-items-end justify-content-center apart-feature-logo">
                                 <img src="https://www.diamondcityre.com/assets/img/squre.png" alt="" class="img-fluid">
                                 <h5 class="mb-0"><?php echo number_format($property['measurements']) ?></h5>
                              </div>
                              <h6>Square (ft)</h6>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-xl-12 col-lg-12 mb-3 mt-5">
                  <div class="appointment-view-box px-md-3 py-md-3 p-2 custom-box-shadow border-radius-2">
                     <!--<h3 class="text-white mb-4">Appointment for view</h3>-->
                     <h4 class="text-white mb-4 text-center text-sm-center text-xs-center text-md-left">VIEW THIS PROPERTY</h4>
                     <div class="row">
                        <div class="col-5">
                           <?php
                           $agent_id = $property['agent_id'];
                           $sql2 = mysqli_query($conn, "SELECT * FROM agents where id= $agent_id");
                           $agent = mysqli_fetch_array($sql2);
                           ?>
                           <img src="https://www.diamondcityre.com/dcity/public/assets/img/<?php echo $agent['img'] ?>" alt="" class="img-fluid">
                        </div>
                        <div class="col-7">
                           <h4 class="text-uppercase"><?php echo $agent['name'] ?></h4>
                           <p class="text-uppercase text-white mb-3"><?php echo $agent['designation'] ?></p>
                           <div class=""><!-- d-xxl-none -->
                                  <a href="https://wa.me/<?php echo (!empty($agent['phone'])) ? str_replace(array(' ','-'),'',$agent['phone']):'+971502176037'; ?>">
                                 <div class="d-flex align-items-md-end">
                                    <div class="me-md-2 me-2"><img src="https://www.diamondcityre.com/assets/img/phone.png" style="width: 20px;"></div>
                                    <div class="info"><?php echo $agent['phone'] ?></div>
                                 </div>
                              </a>
                           <!--  <div class="d-flex mt-2">
                                 <a href="mailto:info@Diamondcity.com">
                                    <div class="d-flex align-items-md-end">
                                       <div class="me-md-2 me-2">
                                          <img src="assets/img/email.png" style="width: 20px;">
                                       </div>
                                       <div style="max-width: 100%;" class="info text-truncate d-none d-xxl-block"><?php echo $agent['email'] ?></div>
                                       <div style="max-width: 100%;" class="info text-truncate d-xxl-none"><?php echo $agent['email'] ?></div>
                                    </div>
                                    -->
                                 </a>
                                 <!-- <a href="" class="mx-2" style="border-right: 1px solid #fff;"></a>
                                 <a href="#">
                                     <div class="d-flex   ">
                                         <div class="me-md-3 me-2 whatsapp-icon">
                                             <i class="fab fa-whatsapp" aria-hidden="true" style="font-size: 20px;"></i>
                                         </div>
                                         <div class="info" style="color: #4caf50 !important;">Whatsapp</div>
                                     </div>
                                 </a> -->
                              </div>
                           </div>
                        </div>
                        <div class="col-12 d-none"> <!-- d-xxl-block -->
                           <a href="tel:971-400-1234" class="">
                              <div class="d-flex align-items-md-end">
                                 <div class="me-md-3 me-2"><img src="https://www.diamondcityre.com/assets/img/phone.png" style="width: 20px;"></div>
                                 <div class="info"><?php echo $agent['phone'] ?></div>
                              </div>
                           </a>
                           <div class="d-flex mt-2">
                              <a href="mailto:info@Diamondcity.com">
                                 <div class="d-flex align-items-md-end">
                                    <div class="me-md-3 me-2">
                                       <img src="https://www.diamondcityre.com/assets/img/email.png" style="width: 20px;">
                                    </div>
                                    <div style="max-width: 100%;" class="info text-truncate"><?php echo $agent['email'] ?></div>
                                 </div>
                              </a>
                              <!-- <a href="" class="mx-2" style="border-right: 1px solid #fff;"></a>
                              <a href="#">
                                  <div class="d-flex   ">
                                      <div class="me-md-3 me-2 whatsapp-icon">
                                          <i class="fab fa-whatsapp" aria-hidden="true" style="font-size: 20px;"></i>
                                      </div>
                                      <div class="info" style="color: #4caf50 !important;">Whatsapp</div>
                                  </div>
                              </a> -->
                           </div>
                        </div>
                        <div class="col-12 mt-4">
                           <a href="https://wa.me/<?php echo (!empty($agent['phone'])) ? str_replace(array(' ','-'),'',$agent['phone']):'+971502176037'; ?>">
                              <div class="btn-white text-center w-100">
                                  
                                  <h4>WhatsApp</h4></div>
                           </a>
                           <!-- <button href="" class="book-viewing-btn w-100 py-2">BOOK A VIEWING</button> -->
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>



      </div>

   </div>

</section>



<section>

   <div class="container overview-detail mt-4" id="overview">

      <div class="row">

         <div class="col-md-8 col-sm-12">

            <h3 class="mb-md-4">Description</h3>

            <p>This exceptional property presents a rare opportunity to own a piece of paradise. Situated amidst lush

               greenery and commanding panoramic views, this luxury estate offers the perfect blend of opulence,

               privacy, and natural beauty.</p>

            <p class="mb-3">Property Highlights:</p>



            <?php echo $property['description']; ?>

            <p class="mb-3">If you're seeking a luxurious retreat that defines the pinnacle of upscale living, this

               property is an absolute must-see. Contact us today to schedule a private tour and experience the

               unmatched elegance and grandeur of this remarkable estate.</p>

         </div>

         <div class="col-md-4 col-sm-12">

            <h3 class="mb-4">Features</h3>

            <div id="features" class="px-md-5 py-md-4 p-3 custom-box-shadow border-raduis-10">

               <ul>



                  <?php



                  $feature_sql = mysqli_query($conn, "SELECT * FROM property_features where property_id= $id");



                  while ($feature = mysqli_fetch_array($feature_sql))

                  {

                     $feature_id = $feature['feature_id'];

                     $features = mysqli_query($conn, "SELECT * FROM features where id= $feature_id");

                     $f_detail = mysqli_fetch_array($features)

                     ?>

                     <li>

                        <p class="mb-3 fw-bold"><?php echo $f_detail['title'] ?></p>

                     </li>

                  <?php } ?>

                  <!-- <li>

                      <p class="mb-3 fw-bold">Penthouse</p>

                  </li>

                  <li>

                      <p class="mb-3 fw-bold">Private swimming pool</p>

                  </li>

                  <li>

                      <p class="mb-3 fw-bold">Large private terrace</p>

                  </li>

                  <li>

                      <p class="mb-3 fw-bold">Panoramic sea and skyline views</p>

                  </li>

                  <li>

                      <p class="mb-3 fw-bold">2 parking spaces</p>

                  </li>

                  <li>

                      <p class="mb-3 fw-bold">5 Luxury Hotel Amenities</p>

                  </li>

                  <li>

                      <p class="mb-3 fw-bold">3 Airy Bedrooms</p>

                  </li>

                  <li>

                      <p class="mb-3 fw-bold">3 Luxury Bathrooms</p>

                  </li>

                  <li>

                      <p class="mb-3 fw-bold">Living Room</p>

                  </li>

                  <li>

                      <p class=" fw-bold">Property reference code: ADM230392</p>

                  </li> -->

               </ul>

            </div>



         </div>

      </div>

   </div>



</section>

<?php
}
else
{?>
   <section class="pt-4" style="background-color: #fff;">
      <div class="container pt-50 pb-100">
         <div class="row">
            <div class="col-sm-12 ">
               <p>No Record Found</p>
            </div>
         </div>
      </div>
   </section>
<?php
}
?>
<section class="pt-4" style="background-color: #fff;">

   <div class="container pt-50 pb-100">

      <div class="row justify-content-center">

         <div class="col-md-6 col-sm-12 text-center">

            <button type="button" class="btn-black" data-bs-toggle="modal" data-bs-target="#exampleModal">BOOK A FREE

               CONSULTATION

            </button>

         </div>

      </div>

      <!-- <div class="col-md-3 col-7 mx-auto">

        <div class="footer-logo">

          <img src="assets/img/f-logo.png" class="img-fluid">

        </div>

      </div> -->

   </div>

</section>

<?php include 'include/footer.php'; ?>

