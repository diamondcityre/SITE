<?php include 'include/header.php'; ?>

 <?php
    $id = $_GET['prop_id'];
    $sql = mysqli_query($conn,"SELECT * FROM gallery_images where property_id= $id LIMIT 1");

    $row = mysqli_fetch_array($sql);

    $property_sql = mysqli_query($conn,"SELECT * FROM properties where id= $id");

   $property = mysqli_fetch_array($property_sql);

//    $result =  mysqli_fetch_array($sql1);

    // echo '<pre>';

    // print_r($row);

    // die;

?>



<section class="pt-pb-50" style="background-color: #4F4F4F;" id="section1"></section>

<section class="my-2">

    <!-- Add ( data-bs-spy="scroll" data-bs-target="#navbar-example") for reply spy active -->

    <div class="container">

        <div class="row mb-5">

            <div class="col-2"></div>

            <div class="col-8"></div>

            <h2 class="py-4 mb-0">

                <a href="lease.php" class="pe-3" style="color: #404040;"><i class="fa fa-arrow-left" aria-hidden="true"></i></a><?php echo $property['title']?>

            </h2>

            <div class="col-12 position-relative">

               

                <img src="dcity/public/assets/img/<?php echo $row['image']?>" id="main" class="img-fluid w-100" />

                <div id="thumbnails" class="d-flex justify-content-between pe-2">





                    <img src="dcity/public/assets/img/<?php echo $property['img1']?>" class="img-fluid " />

                    <img src="dcity/public/assets/img/<?php echo $property['img2']?>" class="img-fluid " />

                    <img src="dcity/public/assets/img/<?php echo $property['img3']?>" class="img-fluid " />

                    <img src="dcity/public/assets/img/<?php echo $property['img4']?>" class="img-fluid " />

                    <img src="dcity/public/assets/img/<?php echo $property['img5']?>" class="img-fluid " />

                    <!-- <img src="assets/img/slider-bed-pic3.jpg" class="img-fluid " /> -->

                    <!-- <img src="assets/img/slider-bed-pic4.jpg" class="img-fluid " /> -->

                    <!-- <img src="assets/img/slider-bed-pic5.jpg" class="img-fluid " /> -->

                    <!-- <img src="assets/img/slider-bed-pic6.jpg" class="img-fluid " /> -->

                </div>

                <button id="prev" class="arrow-btn position-absolute">❮</button>

                <button id="next" class="arrow-btn position-absolute">❯</button>

            </div>

        </div>

        <div class="row">

            <div class="col-lg-7 mb-4">

                <div class=" px-md-5 py-md-4 p-3 custom-box-shadow border-raduis-10">

                    <div class="mb-5 d-flex justify-content-between pb-4 align-items-center" style="border-bottom:1px solid #B0B0B0;">

                        <h3><b><?php echo number_format($property['price'])?></b> AED </h3>

                        <a href="about.php" class="btn-black">For <?php echo $property['tags']?></a>

                        <!-- <a href="" class="py-2 px-4 sale-btn">For Sale</a> -->

                    </div>

                    <div class="row mx-auto">

                        <div class="col-lg-4 col-6  text-center mb-4">

                            <div class="apart-feature-box  py-4">

                                <div class="d-flex gap-4 align-items-end justify-content-center apart-feature-logo">

                                    <img src="assets/img/bedrooms.png" alt="" class="img-fluid">

                                    <h2 class="mb-0"><?php echo $property['bed_rooms']?></h2>

                                </div>

                                <h5>Bedrooms</h5>

                            </div>

                        </div>

                        <div class="col-lg-4 col-6  text-center  mb-4">

                            <div class="apart-feature-box  py-4">

                                <div class="d-flex gap-4 align-items-end justify-content-center apart-feature-logo">

                                    <img src="assets/img/bathrooms.png" alt="" class="img-fluid">

                                    <h2 class="mb-0"><?php echo $property['bath_rooms']?></h2>

                                </div>

                                <h5>Bathrooms</h5>

                            </div>

                        </div>

                        <div class="col-lg-4 col-6  text-center mb-4 ">

                            <div class="apart-feature-box  py-4">

                                <div class="d-flex gap-4 align-items-end justify-content-center apart-feature-logo">

                                    <img src="assets/img/squre.png" alt="" class="img-fluid">

                                    <h2 class="mb-0"><?php echo number_format($property['measurements'])?></h2>

                                </div>

                                <h5>Square (ft)</h5>

                            </div>

                        </div>

                    </div>

                </div>



            </div>

            <div class="col-lg-5 mb-4 ">

                <div class="appointment-view-box px-md-5 py-md-4 p-3 custom-box-shadow border-raduis-10">

                    <h3 class="text-white mb-4">Appointment for view</h3>

                    <div class="row">

                        <div class="col-5">

                            <?php

                            $agent_id = $property['agent_id'];

                            $sql2 = mysqli_query($conn,"SELECT * FROM agents where id= $agent_id");

                            $agent = mysqli_fetch_array($sql2);





                            ?>





                            <img src="dcity/public/assets/img/<?php echo $agent['img']?>" alt="" class="img-fluid">

                        </div>

                        <div class="col-7">

                            <h4><?php echo $agent['name']?></h4>

                            <p class="text-white mb-5"><?php echo $agent['designation']?></p>

                            <a href="tel:971-400-1234" class="">

                                <div class="d-flex align-items-md-end  ">

                                    <div class="me-md-3 me-2"><img src="assets/img/phone.png" style="width: 20px;"></div>

                                    <div class="info"><?php echo $agent['phone']?></div>

                                </div>

                            </a>

                            <div class="d-flex mt-2">

                                <a href="mailto:info@Diamondcity.com">

                                    <div class="d-flex align-items-md-end  ">

                                        <div class="me-md-3 me-2"><img src="assets/img/email.png" style="width: 20px;"></div>

                                        <div class="info"><?php echo $agent['email']?></div>

                                    </div>

                                </a>

                                <a href="" class="mx-2" style="border-right: 1px solid #fff;"></a>

                                <!-- <a href="#">

                                    <div class="d-flex   ">

                                        <div class="me-md-3 me-2 whatsapp-icon">

                                            <i class="fab fa-whatsapp " aria-hidden="true" style="font-size: 20px;"></i>

                                        </div>

                                        <div class="info" style="color: #4caf50 !important;">Whatsapp</div>

                                    </div>

                                </a> -->

                            </div>

                        </div>

                        <div class="col-12 mt-4">

                            <a href="https://wa.me/+971502176037">

                                <div class="btn-white text-center w-100">BOOK A VIEWING</div>

                            </a>

                            <!-- <button href="" class="book-viewing-btn w-100 py-2">BOOK A VIEWING</button> -->

                        </div>

                    </div>



                </div>

            </div>

        </div>

    </div>

</section>

<section style="background-color:  #0B132B;" class="mt-5">

    <div class="container">

        <div class="row py-4 ">

            <div class="col-lg-1"></div>

            <div class="col-md-2 col-4 px-md-0 mb-md-0 mb-4">

                <h3 class="over-view-li"><a href="#overview" class="text-white active">Overview</a></h3>

            </div>

            <div class="col-md-2 col-4 px-md-0 mb-md-0 mb-4">

                <h3 class="over-view-li"><a href="#location" class="text-white ">Location</a></h3>

            </div>

            <div class="col-md-2 col-4 px-md-0 mb-md-0 mb-4">

                <h3 class="over-view-li"><a href="#" class="text-white ">Brochure</a></h3>

            </div>

            <div class="col-md-2 col-4 px-md-0 mb-md-0 mb-4">

                <h3 class="over-view-li"><a href="#features" class="text-white ">Features</a></h3>

            </div>

            <!-- <div class="col-lg-3 col-md-4 col-7 px-md-0 mb-md-0 mb-4">

                <h3 class="over-view-li"><a href="#finance-calculator" class="text-white ">Mortgage Calculator</a></h3>

            </div> -->

            <div class="col-lg-1"></div>



        </div>

    </div>

</section>

<section class="py-5">

    <div class="container overview-detail" id="overview">

        <div class="row ">

            <div class="col-md-7">

                <h3 class="mb-5">Description</h3>

                <p>This exceptional property presents a rare opportunity to own a piece of paradise. Situated amidst lush greenery and commanding panoramic views, this luxury estate offers the perfect blend of opulence, privacy, and natural beauty.</p>

                <p class="mb-3">Property Highlights:</p>



                <?php echo $property['description'];?>

                <p class="mb-3">If you're seeking a luxurious retreat that defines the pinnacle of upscale living, this property is an absolute must-see. Contact us today to schedule a private tour and experience the unmatched elegance and grandeur of this remarkable estate.</p>

            </div>

            <div class="col-md-5">

                <h3 class="mb-5">Location</h3>

                 <iframe class="w-100" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d57805.118155129174!2d55.106451021679696!3d25.10795770000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f69ce5ec8f879%3A0x6afb7ce366c0dd9c!2sDiamond%20City%20Real%20Estate!5e0!3m2!1sen!2s!4v1694446641114!5m2!1sen!2s" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> 

                <!--<div id="googleMap" style="width:100%;height:400px;"></div>-->



                <?php 

                    $long = $property['longitude'];

                    $lati = $property['latitude'];

                ?>



                <script>

                function myMap() {

                var mapProp= {

                  center:new google.maps.LatLng($long, $lati),

                  zoom:5,

                };

                var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

                }

                </script>



                <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script>





                <h3 class="mt-5 mb-4">Features</h3>

                <div id="features" class="px-md-5 py-md-4 p-3 custom-box-shadow border-raduis-10">

                    <ul>



                    <?php



                    $feature_sql = mysqli_query($conn,"SELECT * FROM property_features where property_id= $id");



                    while($feature = mysqli_fetch_array($feature_sql))

                    {

                        $feature_id = $feature['feature_id'];

                        $features = mysqli_query($conn,"SELECT * FROM features where id= $feature_id");

                        $f_detail = mysqli_fetch_array($features)

                    ?>

                        <li>

                            <p class="mb-3 fw-bold"><?php echo $f_detail['title']?></p>

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

        <!-- <div id="finance-calculator" class="mt-5 px-md-5 py-md-4 p-3 custom-box-shadow border-raduis-10">

            <h3 class="mb-4">Finance Calculator</h3>

<!-- 

            <div class="row">

                <div class="col-md-6 mb-3">

                    <label for="property-price" class="fw-bold mb-2">Property Price</label>

                    <div class=" has-search position-relative">

                        <span class="form-control-feedback">AED</span>

                        <input type="text" class="form-control" id="property-price" name="property-price" placeholder="23,000,000">

                    </div>

                </div>

                <div class="col-md-6 mb-3">

                    <label for="property-price" class="fw-bold mb-2">Mortgage Period</label>

                    <div class=" has-search position-relative">

                        <span class="form-control-feedback">5-30 years</span>

                        <input type="text" class="form-control" id="property-price" name="property-price" placeholder="25">

                    </div>

                </div>

                <div class="col-md-6 mb-3">

                    <label for="property-price" class="fw-bold mb-2">Deposit</label>

                    <div class=" has-search position-relative">

                        <span class="form-control-feedback">AED</span>

                        <input type="text" class="form-control" id="property-price" name="property-price" placeholder="6,900,000">

                    </div>

                </div>

                <div class="col-md-6 mb-3">

                    <label for="property-price" class="fw-bold mb-2">Interest</label>

                    <div class=" has-search position-relative">

                        <span class="form-control-feedback">1 - 10 %</span>

                        <input type="text" class="form-control" id="property-price" name="property-price" placeholder="4.5">

                    </div>

                </div>

                <div class="col-md-6 mb-3">

                    <label for="property-price" class="fw-bold mb-2">Loan</label>

                    <div class=" has-search position-relative">

                        <span class="form-control-feedback">AED</span>

                        <input type="text" class="form-control" id="property-price" name="property-price" placeholder="16,100,000">

                    </div>

                </div>

                <div class="col-md-6 mb-3">

                    <label for="property-price" class="fw-bold mb-2">Insurance</label>

                    <div class=" has-search position-relative">

                        <span class="form-control-feedback">AED</span>

                        <input type="text" class="form-control" id="property-price" name="property-price" placeholder="10,000">

                    </div>

                </div>

                <button class="w-100 caulate-btn py-md-3 py-2 mt-4 border-0"> Calculate</button>

            </div> -->

            <!-- <div class="">

                <h3 style="border-bottom: 1px solid #C5C5C5;" class="py-4 fw-light">Monthly repayments = <span class="fw-bold">AED 89,489</span></h3>

                <h3 class="my-4">Mortgage Costs and Fees</h3>

            </div> -->

            <!-- <div class="row">

                <div class="finance-calculator px-md-5 py-md-4 p-3 custom-box-shadow border-raduis-10">

                    <div class="d-flex justify-content-between mb-3">

                        <p>Land Department Fee </p>

                        <p>920,580 <span class="ps-4">AED</span></p>

                    </div>

                    <div class="d-flex justify-content-between mb-3">

                        <p>Trustee Office Fee incl. 5% VAT </p>

                        <p>4,200 <span class="ps-4">AED</span></p>

                    </div>

                    <div class="d-flex justify-content-between mb-3">

                        <p>Mortgage Registration </p>

                        <p>920,580 <span class="ps-4">AED</span></p>

                    </div>

                    <div class="d-flex justify-content-between mb-3">

                        <p>Land Department Fee </p>

                        <p>40,540 <span class="ps-4">AED</span></p>

                    </div>

                    <div class="d-flex justify-content-between mb-3">

                        <p>Real Estate Agency Fee incl. 5% VAT </p>

                        <p>483,000 <span class="ps-4">AED</span></p>

                    </div>

                    <div class="d-flex justify-content-between mb-3">

                        <p>Bank Arrangement Fee </p>

                        <p>161,000 <span class="ps-4">AED</span></p>

                    </div>

                    <div class="d-flex justify-content-between mb-3">

                        <p>Valuation </p>

                        <p>2,750 <span class="ps-4">AED</span></p>

                    </div>

                    <div class="d-flex justify-content-between mb-4">

                        <p>Conveyancing Fee incl. 5% VAT </p>

                        <p>8,400 <span class="ps-4">AED</span></p>

                    </div>

                    <div class="d-flex justify-content-between mb-3">

                        <p class="fw-bold">Total Purchase Costs </p>

                        <p class="fw-bold">1,620,470 <span class="ps-4">AED</span></p>

                    </div>

                    <div class="d-flex justify-content-between mb-3">

                        <p class="fw-bold">Total Required Upfront </p>

                        <p class="fw-bold">8,520,470 <span class="ps-4">AED</span></p>

                    </div>

                </div>

                <div class="col-md-11">

                    <p class="my-3">*This calculator is for illustration purposes only and should be used as a guide, the rates shown are subject to change. A full breakdown of charges will be given at the time of your mortgage offer.</p>

                    <p class="">**These charges and fees are based on industry averages and should be confirmed with your Real Estate agents for exact figures, haus & haus Real Estate Broker accept no liability for indicative illustrations.</p>

                </div>

            </div> -->

        </div> -->

    </div>



</section>

 <section class="pt-4" style="background-color: #fff;">

    <div class="container pt-50 pb-100">

      <div class="row justify-content-center">

        <div class="col-md-4 text-center">

          <button type="button" class="btn-black" data-bs-toggle="modal" data-bs-target="#exampleModal" >BOOK A FREE CONSULTATION</button>

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

