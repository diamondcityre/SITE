<?php

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
?>

<!DOCTYPE html>
<html lang="en">
    
<head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://diamondcityre.com/assets/css/bootstrap.min.css" rel="stylesheet">
   
    <link rel="icon" alt="Diamond City Real Estate"  href="https://diamondcityre.com/assets/img/logo/FAVICON_ICON-bg-black.jpg">
    <link rel="stylesheet" href="https://diamondcityre.com/dcity/public/assets/fonts/custom_font.css">
    <link href="https://diamondcityre.com/assets/css/style.css" rel="stylesheet">
   <meta name="msvalidate.01" content="DFF29FACFE727B5983D9A3652CBCF08E" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.1.0-rc.0/js/select2.min.js" defer></script> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.1.0-rc.0/css/select2.min.css" rel="stylesheet" /> 
   <!-- <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"> -->
    <meta name="msvalidate.01" content="78344F3349F5BE7FEBDDDEF4D0D9DE5B" />
     
    <!--  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
         integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
         crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/roboto-font@0.1.0/css/fonts.min.css">   
   
    <script src="https://diamondcityre.com/assets/js/bootstrap.bundle.min.js"></script>
    <link href="https://fonts.cdnfonts.com/css/gotham-6" rel="stylesheet">   
   <meta name="google-site-verification" content="KPVyGdpwtBdAY-WMwfGwdrqBGXsFpVHjmMRrc37HMF8" />
    
 <script async src="https://www.googletagmanager.com/gtag/js?id=AW-16514800694">
</script>
<!-- <script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-16514800694');
</script>
 -->
</head>
<body>
    
<div class="modal fade" id="subscribeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-body">
            <div class="text-end">
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="px-md-5 py-md-4 p-3">
               <div class="text-center popup-hh py-3 subscribeModalHeading">Subscribe Now</div>
               <form method="post" id="subscribeForms">
                  <input type="hidden" id="subject" name="subject" value="Subscribe">
                  <div class="row">
                     <div class="col-md-12">
                        <div class="mb-3">
                           <input type="text" class="form-control" id="f_name" name="f_name" placeholder="Name"
                                  aria-describedby="emailHelp" required>
                        </div>
                     </div>
                  </div>
                  <div class="mb-3">
                     <input type="email" class="form-control" name="email" placeholder="Email" aria-describedby="emailHelp" required>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <div class="mb-3 subs_phone_container" style="display:none">
                           <input type="tel" name="phone" class="form-control" id="subscribe_phone" style="padding: 11px 130px 11px 60px !important;"/>
                        </div>
                     </div>
                  </div>
                  <input type="hidden"  name="message" value="User Request to Subscribe Now">
                  <button type="submit" name="submit" class="border-0 btn-submit1 w-100 my-4 text-white">SEND</button>
                  <div id="msg_subscribeForms"></div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>

<div class="modal fade" id="exampleModa2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-body">
            <div class="text-end">
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="px-md-5 py-md-4 p-3">
               <div class="text-center popup-hh py-3">Get In Touch With Us</div>
               <form method="post" id="contactForms">
                  <input type="hidden" id="subject" name="subject" value="Contact Us">
                  <div class="row">
                     <div class="col-md-12">
                        <div class="mb-3">
                           <input type="text" class="form-control" id="f_name" name="f_name" placeholder="Name"
                                  aria-describedby="emailHelp" required>
                        </div>
                     </div>
                  </div>
                  <div class="mb-3">
                     <input type="email" class="form-control" id="email" name="email" placeholder="Email"
                     aria-describedby="emailHelp" required>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <div class="mb-3">
                           <input type="tel" name="phone" class="form-control" id="phone2"
                                  style="padding: 11px 130px 11px 60px !important;"/>
                        </div>
                     </div>
                  </div>
                  <div class="mb-3">
                     <textarea style="height: 150px; box-shadow: 0px 0px 4px 0px rgba(0, 0, 0, 0.15) !important;"
                               class="form-control" id="message" name="message" rows="3" placeholder="Your Message"
                               required></textarea>
                  </div>
                  <button type="submit" name="submit" class="border-0 btn-submit1 w-100 my-4 text-white">SEND</button>
                  <div id="msg_contactForms"></div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-body">
            <div class="text-end">
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="px-md-5 py-md-4 p-3">
               <div class="text-center popup-hh py-3">Book A Free Consultation</div>
               <form method="post" id="consultation_form">
                  <input type="hidden" id="subject" name="subject" value="Contact Us">
                  <div class="row">
                     <div class="col-md-12">
                        <div class="mb-3">
                           <input type="text" class="form-control" id="f_name" name="f_name" placeholder="Name"
                                  required>
                        </div>
                     </div>
                  </div>
                  <div class="mb-3">
                     <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <div class="mb-3">
                           <input type="tel" name="phone" class="form-control" id="phone1"
                                  style="padding: 11px 130px 11px 60px !important;"/>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="mb-3">
                        <textarea style="height: 150px; box-shadow: 0px 0px 4px 0px rgba(0, 0, 0, 0.15) !important;"
                                  class="form-control" id="message" name="message" rows="3" placeholder="Your Message"
                                  required></textarea>
                     </div>
                  </div>
                  <button type="submit" name="submit" class="border-0 btn-submit1 w-100 my-4 text-white">SEND</button>
                  <div id="msg_consultation"></div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
   <div class="modal-dialog modal-fullscreen">
      <div class="modal-content bg-black">
         <div class="modal-body h-100">
            <div class="text-end btn-close-responsive">
               <button type="button" class="btn-close m-3 bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
               <!--<div class="row">
                  <div class="col-md-3 mx-auto">
                     <a href="index.php"><img src="assets/img/logo.png" class="img-fluid text-center px-4 px-md-0"></a>
                  </div>
               </div>-->
            <div class="container">
                
               <div class="row pt-pb-50">
                  <div class="col-md-9 col-lg-6 mx-auto">
                      
                     <div class="d-flex justify-content-center mb-5"> <!-- Center align the logo -->
                        <a href="https://www.diamondcityre.com"><img src="https://diamondcityre.com/assets/img/logo/Diamond-city-real-estate.png" class="img-fluid px-4 px-md-0"></a>
                     </div>
                     <div class="accordion" id="accordionExample">
                        <a href="https://www.diamondcityre.com/offplan.php" class="text-white menu-n bg-transparent border-0">
                           <div class="bg-transparent text-start p-2 border-0">Off-Plan Properties</div>
                        </a>
                                <a href="https://www.diamondcityre.com/community/" class="text-white menu-n bg-transparent border-0">
                           <div class="bg-transparent text-start p-2 border-0">Areas</div>
                        </a>
                         <a href="https://www.diamondcityre.com/developer/" class="text-white menu-n bg-transparent border-0">
                           <div class="bg-transparent text-start p-2 border-0">Developer</div>
                        </a>
                 <!--  <a href="https://www.diamondcityre.com/properties-for-sale-in-dubai" class="text-white menu-n bg-transparent border-0">
                           <div class="bg-transparent text-start p-2 border-0">Property For Sale</div>
                        </a> -->
                    <!--    <a href="https://www.diamondcityre.com/properties-for-rent-in-dubai" class="text-white menu-n bg-transparent border-0">
                           <div class="bg-transparent text-start p-2 border-0">Property For Lease</div>
                        </a> -->
                       
                        <a href="https://www.diamondcityre.com/about.php" class="text-white menu-n bg-transparent border-0">
                           <div class="bg-transparent text-start p-2 border-0">About</div>
                        </a>
                        <a href="https://www.diamondcityre.com/career.php" class="text-white menu-n bg-transparent border-0">
                           <div class="bg-transparent text-start p-2 border-0">Careers</div>
                        </a>
                         <a href="https://www.diamondcityre.com/blog/index.php" class="text-white menu-n bg-transparent border-0">
                           <div class="bg-transparent text-start p-2 border-0">News & Articles</div>
                        </a>
                         <a href="https://www.diamondcityre.com/list-your-property" class="text-white menu-n bg-transparent border-0">
                           <div class="bg-transparent text-start p-2 border-0">List My Property</div>
                        </a>
                        <a href="https://www.diamondcityre.com/contact.php" class="text-white menu-n bg-transparent border-0">
                           <div class="bg-transparent text-start p-2 border-0">Contact</div>
                        </a>
                     </div>
                     <div class="row mt-3">
                        <div class="col-xl-6 mb-4">
                           <button type="button" class="btn-white_2 w-100 text-center text-uppercase" data-bs-toggle="modal"
                                   data-bs-target="#exampleModal">
                              <i class=" me-3"></i> <span> BOOK A FREE CONSULTATION</span>
                           </button>
                        </div>
                        <div class="col-xl-6 mb-4">
                           <a href="https://wa.link/6kbmhz" class="">
                              <div class="btn-white_2 w-100 text-center text-uppercase">
                                 <span> CALL NOW</span>
                              </div>
                           </a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

<div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-body">
            <div class="text-end">
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="px-md-5 py-md-4 p-3">
               <form action="https://www.diamondcityre.com/properties-for-sale">
                  <div class="my-3">
                     <input type="text" class="form-control" name="search_keyword" placeholder="Type to search...">
                  </div>
                  <input type="submit" name="Search" class="border-0 btn-submit1 w-100 my-4 text-white">
               </form>
            </div>
         </div>
      </div>
   </div>
</div>


<header class="position-absolute w-100 z-1 navbar-top" style="z-index: 29 !important;">
   <div class="container-fluid">
      <div class="row align-items-center pt-4 px-md-5">
         <div class="col-6 col-md-6 col-lg-4">
            <a href="https://www.diamondcityre.com/" class="logo-wrap d-block">
               <img src="https://diamondcityre.com/assets/img/logo/Diamond-city-real-estate.png" style="margin-top: -20px;" class="sticky-logo img-fluid" alt="Black Logo">
            </a>
         </div>

         <div class="col-md-3 text-end d-none d-lg-block">
            <div class="online">
            <span><svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10" fill="none">

                <ellipse cx="4.36398" cy="4.5002" rx="4.36398" ry="4.5002"
                         transform="matrix(0.999882 0.015354 -0.0198374 0.999803 0.680664 0.617188)"
                         fill="#30CA30"></ellipse>
              </svg></span> online

            </div>

            <a class="number-h " href="" style="color:#fff;">+971 4 438 5233</a>

         </div>

         <div class="col-md-1 d-none d-lg-block">
            <!-- <img src="assets/img/wa1.png" class="img-fluid ms-lg-4"> -->

            <div class=" d-flex justify-content-between">
               <a href="#" class="me-3" data-bs-toggle="modal" data-bs-target="#searchModal" style="display: none;">
                  <i class="fa fa-search header-icon" aria-hidden="true" style="font-size: 25px; color:#fff;"></i>
               </a>

               <a href="https://wa.me/+971502176037">
                  <i class="fab fa-whatsapp header-icon" aria-hidden="true" style="font-size: 25px; color:#fff;"></i>
               </a>
            </div>

         </div>




    <div class="col-md-3 d-none d-lg-block">
            <div class="book-call p-2">
               <a href="https://wa.link/6kbmhz">
                  <div class="">
                     <button type="button" class="book-v-call py-2 w-100 text-uppercase" data-bs-toggle="modal"
                             data-bs-target="">

                    <span class="me-2">
                    </span class="col-md-1 text-end d-block d-lg-none">Direct : +971-50-217-6037
                     </button>
                  </div>
               </a>
            </div>
         </div>
    <!--<div class="col-md-3 d-none d-lg-block">
            <div class="book-call p-2">
               <a href="#">
                  <div class="">
                     <button type="button" class="book-v-call py-2 w-100 text-uppercase" data-bs-toggle="modal"
                             data-bs-target="#exampleModal">

                    <span class="me-2">
                    </span class="col-md-1 text-end d-block d-lg-none">Book A Free Consultation
                     </button>
                  </div>
               </a>
            </div>
         </div> -->

         <div class="col-7 col-md-1 px-md-0 text-end d-none d-lg-block">
            <button type="button" class="bg-transparent border-0 border-0" data-bs-toggle="modal"
                    data-bs-target="#staticBackdrop">
               <div class="menu-b"><i class="fa fa-bars"></i> <span> Menu</span></div>
            </button>
         </div>

         <div class="col-6 text-end d-block d-lg-none d-flex justify-content-end">
            <div>
               <div class=" d-flex">
             <!--     <a href="#" class="me-3">
                     <i class="fa fa-video text-white" aria-hidden="true" style="font-size: 25px;"></i>
                  </a> -->

                  <a href="#" class="me-3" data-bs-toggle="modal" data-bs-target="#searchModal" style="display: none;">
                     <i class="fa fa-search header-icon" aria-hidden="true" style="font-size: 25px; color:#fff;"></i>
                  </a>

                  <a href="" class="me-3">
                     <i class="fab fa-whatsapp text-white" aria-hidden="true" style="font-size: 25px;"></i>
                  </a>
               </div>

            </div>

            <button type="button" class="bg-transparent border-0 border-0" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
               <div class="menu-b"><i class="fa fa-bars"></i></div>
            </button>

         </div>
      </div>
   </div>
</header>


   <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-2c7831bb44f98c1391d6a4ffda0e1fd302503391ca806e7fcc7b9b87197aec26.js">
  </script> 
   <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
           crossorigin="anonymous"></script> 
    
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-JKTCHNTKZR"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-JKTCHNTKZR');
</script>
    
 
<!-- Google tag (gtag.js) GA4 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-JKTCHNTKZR"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-JKTCHNTKZR');
</script>



<script>
   function restrictToDigits(event) {
      const inputField = event.target;
      const inputValue = inputField.value;
      const digitsOnly = inputValue.replace(/\D/g, ""); // Remove non-digit characters
      if (inputValue !== digitsOnly) {
         inputField.value = digitsOnly; // Update the input field with digits only
      }
   }
   // Function to capitalize the first letter of each word
   function capitalizeFirstLetter(text) {
      text = text.toLowerCase();
      return text.replace(/\b\w/g, function (char) {
         return char.toUpperCase();
      });
   }
   /*dbip.autoSelectCountry("#my-form-country").then(function () {
    alert("country autofill completed");
    });*/
</script>
