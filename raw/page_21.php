<?php include 'include/header.php';

$id = $_GET['plan_id'];
$sql = mysqli_query($conn, "SELECT * FROM off_plans where id = $id");
$row = mysqli_fetch_array($sql);

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

      @media (min-width: 576px) {
         .sticky-sub-header {
            max-width:540px
         }
      }

      @media (min-width: 768px) {
         .sticky-sub-header, {
            max-width:720px
         }
      }

      @media (min-width: 992px) {
         .sticky-sub-header {
            max-width:960px
         }
      }

      @media (min-width: 1200px) {
         .sticky-sub-header {
            max-width:1140px
         }
      }

      @media (min-width: 1400px) {
         .sticky-sub-header {
            max-width:1320px
         }
      }

      .nav-item a.active {
         border-bottom: 3px solid #676666;
         color: #07234b;
         font-weight: 900;
      }
   </style>

   <section class="pb-100 pt-200 position-relative"
            style="background-image: url('dcity/public/assets/img/<?php echo $row['banner_img'] ?>'); background-size: cover; background-position: center; background-repeat: no-repeat;">
      <!-- <div id="text"></div> -->
      <div class="overlay-top"></div>
      <div class="container position-relative z-3">
         <div class="row">
            <div class="col-lg-8 mx-auto col-md-12">
               <h2 class="about-banner-h pb-3"> <?php echo $row['title'] ?> </h2>
               <div class="d-block d-md-flex justify-content-center">
                  <a href="#" class="me-3">
                     <button type="button" class="btn-white" data-bs-toggle="modal" data-bs-target="#exampleModa2"
                             style="width:250px;">DOWNLOAD BROCHURE
                     </button>
                  </a>
                  <a href="#" .php">
                  <button type="button" class="btn-white" data-bs-toggle="modal" data-bs-target="#exampleModa2"
                          style="width:250px;">REGISTER NOW
                  </button>
                  </a>
               </div>
            </div>
         </div>
      </div>
   </section>
   <section>
      <div class="container">
         <div class="row">
            <div class="col-md-12 pt-4 d-md-none">
               <div class="d-flex overflow-auto py-3 p2_header1">
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
                  <div class="pe-3">
                     <a href="#floorplan" class="sticky-m-nav">Floorplan</a>
                  </div>
                  <div class="pe-3">
                     <a href="#paymentplans" class="sticky-m-nav">Prices</a>
                  </div>
                  <!-- <div class="pe-3">
                      <a href="#paymentplans" class="sticky-m-nav">Payment Plans</a>
                  </div> -->
                  <div class="pe-3">
                     <a href="#video" class="sticky-m-nav">Video</a>
                  </div>
                  <div class="pe-3">
                     <a href="#register" class="sticky-m-nav">Register</a>
                  </div>
               </div>
            </div>
            <div class="col-12 pt-4 tabs-details d-none d-md-block p2_header">
               <div class="gap-1 gap-md-0 nav" id="pills-tab">
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
                  <div class="nav-item" role="presentation">
                     <a href="#floorplan" class="nav-link text-dark">Floorplan</a>
                  </div>
                  <div class="nav-item" role="presentation">
                     <a href="#paymentplans" class="nav-link text-dark">Payment Plans</a>
                  </div>
                  <div class="nav-item" role="presentation">
                     <a href="#video" class="nav-link text-dark">Video</a>
                  </div>
                  <div class="nav-item" role="presentation">
                     <a href="#register" class="nav-link text-dark">Register</a>
                  </div>

                  <div class="d-none d-xl-block ms-auto">
                     <div class="nav-item" role="presentation">
                        <a href="#">
                           <button type="button" class="btn-white me-3" data-bs-toggle="modal"
                                   data-bs-target="#exampleModa2"
                                   style="width:241px; border: 1px solid #0b132b !important;color: #0b132b !important;">
                              DOWNLOAD BROCHURE
                           </button>
                        </a>
                        <a href="#">
                           <button type="button" class="btn-white" data-bs-toggle="modal" data-bs-target="#exampleModa2"
                                   style="width:240px; border: 1px solid #0b132b !important;color: #0b132b !important;">
                              REGISTER NOW
                           </button>
                        </a>
                     </div>
                  </div>


               </div>
            </div>

            <div class="mt-5" id="details">

               <div class="row">
                  <h1 class="mb-4 text-center text-lg-start off-plan-heading"><?php echo $row['title'] ?></h1>
                  <div class="col-md-8 mb-4 mb-md-0">
                     <?php echo $row['description'] ?>
                     <div class="d-flex mt-5 d-brochure">
                        <a href="#">
                           <button type="button" class="btn-black" data-bs-toggle="modal"
                                   data-bs-target="#exampleModa2">DOWNLOAD BROCHURE
                           </button>
                        </a>
                     </div>
                  </div>
                  <div class="col-md-3 order-lg-3 text-center text-lg-start">
                     <span class="text-uppercase" style="font-size: 12px;">starting price</span>
                     <h3 style="border-bottom: 1px solid #C5C5C5; color:#0B132B;"
                         class="py-3 fw-bold"><?php echo $row['price']; ?> AED</h3>
                     <span class="text-uppercase" style="font-size: 12px;">Handover</span>
                     <h3 style="border-bottom: 1px solid #C5C5C5; color:#0B132B;" class="py-3 fw-bold">
                        <?php $completionDate = date('Y', strtotime($row['completion_dat']));
                        echo $completionDate ?>
                     </h3>
                     <span class="text-uppercase" style="font-size: 12px;">Payment Plan</span>
                     <h3 style="border-bottom: 1px solid #C5C5C5; color:#0B132B;"
                         class="py-3 fw-bold"><?php echo $row['plan']; ?></h3>
                  </div>
                  <div class="col-lg-1 order-lg-2"></div>
               </div>
            </div>
            <div class="mt-5 mb-3" id="gallery">
               <div class="row mb-lg-5">
                  <h1 class="mb-4 off-plan-heading text-md-start text-center">Gallery</h1>
                  <div class="col-md-8 position-relative second-gallery mb-4 mb-md-0">
                     <img src="dcity/public/assets/img/<?php echo $row['img1'] ?>" id="main" class="img-fluid w-100">
                     <div id="thumbnails" class="row justify-content-between px-2">
                        <img src="dcity/public/assets/img/<?php echo $row['img1'] ?>" class="img-fluid active"/>
                        <img src="dcity/public/assets/img/<?php echo $row['img2'] ?>" class="img-fluid "/>
                        <img src="dcity/public/assets/img/<?php echo $row['img3'] ?>" class="img-fluid "/>
                        <img src="dcity/public/assets/img/<?php echo $row['img4'] ?>" class="img-fluid "/>
                     </div>
                     <button id="prev" class="arrow-btn position-absolute d-none">❮</button>
                     <button id="next" class="arrow-btn position-absolute d-none">❯</button>
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
               <img src="dcity/public/assets/img/<?php echo $row['location_img'] ?>" class="img-fluid">
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

   <div class="container mt-5" id="amenities">
      <div class="row">
         <h1 class="mb-4 off-plan-heading text-md-start text-center">Amenities</h1>
         <div class="col-md-12">
            <div class="owl-carousel owl-theme">
               <div class="item">
                  <img src="dcity/public/assets/img/<?php echo $row['ame1'] ?>" alt="" class="img-fluid">
                  <!--<p class="mt-4 text-center text-lg-start">Playground & Sports Facilities</p>-->
               </div>
               <div class="item">
                  <img src="dcity/public/assets/img/<?php echo $row['ame2'] ?>" alt="" class="img-fluid">
                  <!--<p class="mt-4 text-center text-lg-start">Parks</p>-->
               </div>
               <div class="item">
                  <img src="dcity/public/assets/img/<?php echo $row['ame3'] ?>" alt="" class="img-fluid">
                  <!--<p class="mt-4 text-center text-lg-start">Fully Equipped Gym</p>-->
               </div>
               <div class="item">
                  <img src="dcity/public/assets/img/<?php echo $row['ame4'] ?>" alt="" class="img-fluid">
                  <!--<p class="mt-4 text-center text-lg-start">Ground level Dining & Retail</p>-->
               </div>

               <div class="item">
                  <img src="dcity/public/assets/img/<?php echo $row['ame5'] ?>" alt="" class="img-fluid">
                  <!--<p class="mt-4 text-center text-lg-start">Ground level Dining & Retail</p>-->
               </div>

               <div class="item">
                  <img src="dcity/public/assets/img/<?php echo $row['ame6'] ?>" alt="" class="img-fluid">
                  <!--<p class="mt-4 text-center text-lg-start">Ground level Dining & Retail</p>-->
               </div>

               <!-- Add more items as needed -->
            </div>
         </div>
      </div>
   </div>
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
                           <img src="dcity/public/assets/img/<?php echo $v['img'] ?>" alt=""
                                class="img-fluid" style="height: 80px;">
                        </th>
                        <td><?php echo $v['type'] ?> Bedrooms</td>
                        <!-- <td>Coral living</td> -->
                        <td><?php echo $v['property_type_name']; ?></td>
                        <td><?php echo formatNumber($v['total_area_sq_ft']); ?> sq. ft.</td>
                        <td><?php echo (!empty($v['ask_for_price'])) ? 'Ask For Price' : formatNumber($v['starting_price']) . ' AED'; ?>
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
   <div class="container mt-5" id="paymentplans">
      <?php
      $payment_plan_arr = explode('/', $row['plan']);
      ?>
      <div class="row">
         <h1 class="mb-4 off-plan-heading text-md-start text-center">Payment Plans</h1>
         <div class="col-md-3 ">
            <div class="mb-4 d-flex align-items-center heading-payment-box">
               <h2 style=" color:#0B132B;" class=" fw-bold mb-0"><?php echo $payment_plan_arr[0]; ?></h2>
               <span class=" ps-2" style="font-size: 14px;"> During Construction</span>
            </div>
            <div class="mb-4 d-flex align-items-center heading-payment-box">
               <h2 style=" color:#0B132B;"
                   class=" fw-bold mb-0"><?php echo $payment_plan_arr[1]; ?></h2>
               <span class=" ps-2" style="font-size: 14px;">On Handover
</span>
            </div>
            <a href="#">
               <button type="button" class="btn-black text-center w-100 px-3" data-bs-toggle="modal"
                       data-bs-target="#exampleModa2">DOWNLOAD BROCHURE
               </button>
               <!--<div class="btn-black text-center">Download Pricing</div>-->
            </a>
         </div>

      </div>
   </div>
   <div class="container mt-5 " id="video">
      <div class="row">
         <h1 class="mb-4 off-plan-heading text-center text-lg-start">Video</h1>
         <div class="col-md-7">
            <?php
            if ((bool)preg_match('/<iframe.*<\/iframe>/', $row['video_url']))
            {
               echo $row['video_url'];
            }
            else
            {?>
               <iframe width="100%" height="450" src="<?php echo $row['video_url']; ?>"
                       frameborder=allowfullscreen></iframe>
               <?php
            }
            ?>
         </div>
      </div>
   </div>
   <div class="container pt-pb-100 " id="register">
      <div class="row">
         <div class="col-md-6 mb-4">
            <img src="assets/img/dcre1.png" alt="" class="img-fluid">
         </div>
         <div class="col-md-6 mb-4">
            <div class="box4 px-md-5 py-md-4 p-3">
               <h2 class="text-center py-3">Register your Interest</h2>
               <form method="post" id="contactForms">
                  <input type="hidden" id="subject" name="subject" value="Contact Us">
                  <div class="row">
                     <div class="col-md-12">
                        <div class="mb-3">
                           <input type="text" class="form-control" id="f_name" name="f_name" placeholder="Name"
                                  aria-describedby="emailHelp">
                        </div>
                     </div>
                  </div>
                  <div class="mb-3">
                     <input type="email" class="form-control" id="email" name="email" placeholder="Email"
                            aria-describedby="emailHelp">
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <div class="mb-3">
                           <select class="form-select" aria-label="Default select example">
                              <option selected="">Code</option>
                              <option value="1">+91</option>
                              <option value="2">+92</option>
                              <option value="3">+93</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-8">
                        <input type="text" class="form-control" id="phones" name="phones" placeholder=" Enter Number"
                               aria-describedby="emailHelp">
                     </div>

                     <div class="mb-3">
                        <textarea style="height: 150px; box-shadow: 0px 0px 4px 0px rgba(0, 0, 0, 0.15) !important;"
                                  class="form-control" id="message" name="message" rows="3"
                                  placeholder="Your Message"></textarea>
                     </div>

                  </div>
                  <div id="msg2"></div>
                  <button type="submit" name="submit" id="submit-btn1"
                          class=" border-0 btn-submit1 w-100 my-4 text-white">Submit
                  </button>
               </form>
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
      window.addEventListener('scroll', function () {
         $(document).find('.p2_header').toggleClass('sticky-header', window.scrollY > 350);
         $('#pills-tab').toggleClass('sticky-sub-header', window.scrollY > 350);
         $(document).find('header.navbar-top').toggleClass('hidden', window.scrollY > 350);
      });

      $(document).ready(function() {
         $('.nav-item').click(function() {
            // Remove the 'active' class from all nav-items
            $('.nav-item').find('a').removeClass('active');

            // Add the 'active' class to the clicked nav-item
            $(this).find('a').addClass('active');
         });
      });

   </script>
<?php include 'include/footer.php'; ?>