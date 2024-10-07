<?php
if (file_exists('routes.php'))
{include_once 'routes.php';}?>

<?php
include $_SERVER['DOCUMENT_ROOT'] . '/include/header.php';
?>

<head>  
    <meta charset="utf-8">  
    <meta name="robots" content="index, follow">
    <title>Diamond City Real Estate | Award Winning Real Estate Agency</title>
    <meta name="title" content="Top Award Winning Real Estate in Dubai UAE | Diamond City Real Estate" />
    <meta name="description" content="Discover prime real estate investment opportunities in Dubai with our experienced team. Let us help you find your ideal home or investment" />
    <link rel="canonical" href="https://www.diamondcityre.com/" />
    <meta name="keywords" content="OffPlan Properties for Sale in Dubai, Home for sale, How to buy a home in dubai, offplan dubai, Offplan properties, New homes for sale in dubai, Best Real estate Broker, Award wining Real estate,Property for sale, House for sale, Luxury homes for sale, Apartment for sale, Cheap Houses For Sale">  
    <meta name="author" content="thisauthor">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <link href="https://www.diamondcityre.com/assets/css/header.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Open Graph / Facebook -->
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://www.diamondcityre.com/" />
    <meta property="og:title" content="Diamond City Real Estate | Top Award Winning Real Estate in Dubai" />
    <meta property="og:description" content="Discover your dream property with best top rated real estate agency in dubai. Explore popular projects of Offplan Dubai by prestigious developers." />
    <meta property="og:image" content="https://media.licdn.com/dms/image/D4D0BAQEm1XjZZ9GsGA/company-logo_100_100/0/1701760276633/diamondcityrealestatebroker_logo?e=1714608000&v=beta&t=dMMmJYDq6UEhactCEiajNdaq8VkMc2SIoxSFrHnwVmk" />
    
<!-- Twitter -->
    <meta property="twitter:card" content="summary_large_image" />
    <meta property="twitter:url" content="https://www.diamondcityre.com/" />
    <meta property="twitter:title" content="Diamond City Real Estate | Top Award Winning Real Estate  in Dubai" />
    <meta property="twitter:description" content="Discover your dream property with best top rated real estate agency in dubai. Explore popular projects of Offplan Dubai by prestigious developers." />
    <meta property="twitter:image" content="https://media.licdn.com/dms/image/D4D0BAQEm1XjZZ9GsGA/company-logo_100_100/0/1701760276633/diamondcityrealestatebroker_logo?e=1714608000&v=beta&t=dMMmJYDq6UEhactCEiajNdaq8VkMc2SIoxSFrHnwVmk" />
    
    <style>
        .slide { position: absolute; top: 0; left: 0; width: 100%; background-size: cover; background-position: center; background-repeat: no-repeat; transition: 2s !important; }
        .slide1 { background-image: url('../assets/img/slide/club-palace-dubai-hills-estate.png'); }
        .slide2 {background-image: url('../assets/img/slide/Park-lane-by-vida.png');}
        .slide3 {background-image: url('https://properties-emaar-com.azureedge.net/wp-content/uploads/2022/12/01_HERO_FARM-GARDENS_THE_VALLEY_WEBSITE-1620x832.jpg');}
        .slide4 {background-image: url('https://www.diamondcityre.com/dcity/public/assets/img/170022235147.png');}
        .slide5 {background-image: url('../assets/img/slide/altus-dubai-creek-harbour.png');}
        .slide-content { display: flex; justify-content: center; align-items: center; }
        .slide-content span { font-size: 28px; color: #fff; }
        
        
        $theme-color: #652D90;
body{
	font-family: 'Roboto Condensed', sans-serif;
}

#service-slider{
	.service-items {
        /* border: 2px solid #ddd; */
        padding: 9px 8px;
        text-align: left;
        margin: 0 4px;
        -webkit-transition: all .4s;
        -moz-transition: all .4s;
        -ms-transition: all .4s;
        -o-transition: all .4s;
        /* transition: all .4s; */
        box-shadow: 0px 0px 8px 0px rgba(0, 0, 0, 0.1);
    }
		.service-details{
			padding-top: 20px;
			h3{
				text-transform: uppercase;
				font-weight: bold;
				color: #545554;
			}
			p{
				font-size: 16px;
				line-height: 26px;
				
			}
			.more-service{
				font-size: 16px;
				color: #333;
				font-weight: bold;
				text-transform: uppercase;
				color: #545554;
			}
		}
		&:hover{
			border-color: $theme-color;
			.service-details{
				h3{
					color: $theme-color;
				}
				.more-service{
					color: $theme-color;
				}
			}
		}
	}
	.owl-nav{
		position: relative;
		margin-top: 10px;
		margin-bottom: 120px;
		.owl-prev, .owl-next{
			width: 46px;
			height: 46px;
			line-height: 46px;
			text-align: center;
			-webkit-border-radius: 50%;
			-moz-border-radius: 50%;
			-ms-border-radius: 50%;
			-o-border-radius: 50%;
			border-radius: 50%;
			border: 1px solid #ddd;
			position: absolute;
			top: 0
		}
		.owl-prev{
			left: 43%;
		}
		.owl-next{
			right: 43%;
		}
	}
	.owl-dots {
		left: 48%;
		position: absolute;
		margin-top: 14px;
		.owl-dot{
			float: left;
			span {
				background-color: #869791;
				border-radius: 20px;
				height: 12px;
				margin: 5px 7px;
				opacity: 0.5;
				width: 12px;
				float:left;
			}
		}
	}
	.owl-dots .owl-dot.active span{
			background-color: $theme-color;
			opacity: 1;
	}
}
        
        
        /* Make the tag position relative to the figure */
.figure.tag {
  position: relative;
}
/* set the base styles all tags should use */
.figure.tag::before {
  position: absolute;
  top: 10%;
  display: block;
  color: white;
  padding: 0.5rem 1rem;
  font-weight: bold;
}
/* Specific variations for different tags */
.figure.tag-featured::before {
  content: "Apartments, Townhouse";
  background: orange;
}
.figure.tag-sale::before {
  content: "Sale";
  background: red;
}

.figure.tag-out::before {
  content: "Out of Stock";
  background: #e2e2e2;
  border: #ccc;
  color: #444;
  top: 42%;
  right: 0;
  left: 0;
  width: 30%;
  margin: 0 auto;
  text-align: center;
}

        
    </style>
    <script>
        
        jQuery(document).ready(function($) {
        		"use strict";
        		//  TESTIMONIALS CAROUSEL HOOK
		        $('#service-slider').owlCarousel({
		            loop: true,
		            items: 3,
		            margin: 0,
		            autoplay: true,
		            dots:true,
								nav: true,
								navText: ['<i class="fa fa-arrow-left"></i>','<i class="fa fa-arrow-right"></i>'],
		            autoplayTimeout: 8500,
		            smartSpeed: 450,
		            responsive: {
		              0: {
		                items: 1
		              },
		              768: {
		                items: 2
		              },
		              1170: {
		                items: 3
		              }
		            }
		        });
        	});
        
    </script>

</head>  

<body class="">
<section class="position-relative video-wrapper bg-overlay bg-overlay-gradient px-0 mt-0 position-relative">
   <div class="overlay-top_2"></div>
   <div class="video-content">
      <div class="container">
         <div class="row text-start">
            <div class="col-lg-8 col-xl-6 text-white mt-5 mt-md-0 pt-3 pt-md-0">
               <strong class="slider-h ">Discover PREMIER Properties IN Dubai</strong>
               <div class="d-block d-flex mt-4 d-grid gap-2">
                <a href="#"><button type="button" class="btn-white" data-bs-toggle="modal"
                       data-bs-target="#exampleModal">BOOK A FREE CONSULTATION</button>
               </a>
               <a href="https://www.diamondcityre.com/best-off-plan-projects-in-dubai">
                    <button type="button" class="btn-white" data-bs-toggle="modal"
                       data-bs-target="">OFFPLAN PROPERTIES</button>
               </a>
                 <!-- <a href="https://wa.link/6kbmhz">
                     <div class="btn-white btn-white1 mb-3 ms-0" style="width:250px;">BOOK A FREE CONSULTATION</div>
                  </a> 
                  <a href="https://www.diamondcityre.com/offplan.php">
                     <div class="btn-white btn-white1 mb-3 ms-0 ms-md-3" style="width:250px;">OFF PLAN PROPERTIES</div>
                  </a>-->
               </div>
            </div>
         </div>
      </div>
   </div>

  <video class="d-none d-md-block" poster="assets/img/newbg-video.mp4" src="assets/img/newbg-video.mp4" muted="" autoplay="" loop="" playsinline=""  ></video>
  <video class="w-100 h-100 d-md-none" poster="assets/img/newbg-video-mobile.mp4" src="/assets/img/newbg-video-mobile.mp4"autoplay="" loop="" playsinline="" ></video>
</section>




<section>
   <div class="container mt-4">
      <div style="background: #0B132B;">
         <h1 class="d-none d-md-block r-h2-d text-white text-center py-2 mb-0 px-md-4 px-0 fw-light dubai-heading"
             data-aos="fade-up">New Off-Plan Properties for Sale in Dubai</h1>
         <h2 class="r-h2-dd d-md-none text-white text-center py-2 mb-0 px-md-5 px-0 fw-light" data-aos="fade-up">Dubai's
            Top-Performing Off-plan Projects</h2>
      </div>
      <div class="wrap">
         <div id="dir-control-left" class="dir-control d-none d-lg-block"><i class="fa fa-angle-left fa-icon-ang fa-5x"
                                                                             aria-hidden="true"></i>
         </div>
         <div id="slider" class="">
            <div class="overlay-top" style="z-index: 0 !important; height: auto;">

               <div class="slide slide1 slider-active slide-transition slide-is-active">
                  <div class="slide-content">
                  <!--   <div class="starting-price">
                        <h3 class=" text-white text-uppercase secon-slider-h2-right">Starting from AED <b>3.3
                              Million</b></h3>
                        <h3 class=" text-white text-uppercase secon-slider-h2-right">90/10 Payment Plan</h3>
                     </div> -->
                     <span>
            <div class="col-12 mx-auto">
              <h2 class=" text-white mb-0 text-center">Palace Residence at Dubai Hills</h2>
              <p class="secon-slider-h2-ne secon-slider-h2">1-3 BR Apartments</p>
              <div class="d-flex  pt-3">
                <a href="/project/81/Palace-Residences-at-Dubai-Hills-Estate" class="btn-white mx-auto box-bt">MORE DETAILS</a>
              </div>
            </div>
          </span>
                  </div>
               </div>
               <div class="slide slide2 slider-active slide-transition slide-is-active">
                  <div class="slide-content">
                <!--     <div class="starting-price">
                        <h3 class=" text-white text-uppercase secon-slider-h2-right">Starting from AED <b>550k</b></h3>
                        <h3 class=" text-white text-uppercase secon-slider-h2-right">50/50 Payment Plan</h3>
                     </div> -->
                     <span>
            <div class="col-12 mx-auto">
              <h2 class="text-white mb-0 text-center">Park Lane Interiors by VIDA</h2>
              <p class="secon-slider-h2-ne secon-slider-h2">1-3 BR Apartments, Townhouse</p>
              <div class="d-flex  pt-3">
                <a href="project/82/Park-Lane-Interiors-by-VIDA" class="btn-white mx-auto box-bt">MORE DETAILS</a>
              </div>
            </div>
          </span>
                  </div>
               </div>
               <div class="slide slide3 slider-active slide-transition">
                  <div class="slide-content">
                   <!--  <div class="starting-price">
                        <h3 class=" text-white text-uppercase secon-slider-h2-right">Starting from AED 18 Million</h3>
                        <h3 class=" text-white text-uppercase secon-slider-h2-right">80/20 Payment Plan</h3>
                     </div> -->
                     <span>
            <div class="col-12 mx-auto">
              <h2 class="text-white mb-0 text-center">Farm Garden By Emaar</h2>
              <p class="secon-slider-h2-ne secon-slider-h2">4 & 5 Bedroom Villas </p>
              <div class="d-flex  pt-3">
                <a href="project/54/Farm-Gardens-by-Emaar" class="btn-white mx-auto box-bt">MORE DETAILS</a>
              </div>
            </div>
          </span>
                  </div>
               </div>
               <div class="slide slide4 slider-active slide-transition">
                  <div class="slide-content">
            <!--         <div class="starting-price">
                        <h3 class=" text-white text-uppercase secon-slider-h2-right">Starting from AED 1.1 Million</h3>
                        <h3 class=" text-white text-uppercase secon-slider-h2-right ">Pay 1% Per Month</h3>
                     </div> -->
                     <span>
            <div class="col-12 mx-auto">
              <h2 class="text-white mb-0 text-center">Palm Jebel Ali</h2>
              <p class="secon-slider-h2-ne secon-slider-h2">5-7 Bedroom Luxury Villas</p>
              <div class="d-flex  pt-3">
                <a href="project/39/Palm-Jebel-Ali" class="btn-white mx-auto box-bt">MORE DETAILS</a>
              </div>
            </div>
          </span>
                  </div>
               </div>
               
                <div class="slide slide5 slider-active slide-transition">
                  <div class="slide-content">
            <!--         <div class="starting-price">
                        <h3 class=" text-white text-uppercase secon-slider-h2-right">Starting from AED 1.1 Million</h3>
                        <h3 class=" text-white text-uppercase secon-slider-h2-right ">Pay 1% Per Month</h3>
                     </div> -->
                     <span>
            <div class="col-12 mx-auto">
              <h2 class="text-white mb-0 text-center">Altus at Dubai Creek Harbour</h2>
              <p class="secon-slider-h2-ne secon-slider-h2">1-3 BR Apartments</p>
              <div class="d-flex  pt-3">
                <a href="project/79/Altus-at-Dubai-Creek-Harbour-by-Emaar-Properties" class="btn-white mx-auto box-bt">MORE DETAILS</a>
              </div>
            </div>
          </span>
                  </div>
               </div>
               
               
            </div>
         </div>
         <div id="dir-control-right" class="dir-control d-none d-lg-block"><i
                  class="fa fa-angle-right fa-5x fa-icon-ang" aria-hidden="true"></i>
         </div>
      </div>
   </div>
</section>


<section>
   <div class="container">
      <div class="row justify-content-center">
         <div class="col-md-12 pt-b pb-5 mx-md-4 text-center">
             <h2 class="mt-5">About Diamond City Real Estate</h2>
            <p>Welcome to Diamond City Real Estate your trusted partner in navigating the dynamic landscape of the UAE real estate market. With an illustrious journey spanning 20 years, we have honed our expertise to become leaders in various facets of the industry, including sales, off-plan ventures, rentals, commercial spaces, and property management.</p>
            <p >Our dedicated team comprises RERA qualified brokers, ensuring the highest standards of professionalism and knowledge. At Diamond City, our unwavering focus revolves around our clients – their dreams, aspirations, and financial growth. We are committed to not just finding properties, but to crafting investment opportunities that yield the utmost returns.</p>
            
            </div>
      </div>
   </div>
</section>


<section class="pb-10">
   <div class="container">
      <div class="row justify-content-center">
         <div class="col-lg-3 col-md-5 md-md-0 mb-3">
            <a href="https://www.diamondcityre.com/about.php">
               <div class="btn-black text-center">ABOUT US</div>
            </a>
         </div>
         
         <div class="col-lg-3 col-md-5 md-md-0 mb-3">
            <a href="https://www.diamondcityre.com/list-your-property">
               <div class="btn-black text-center px-3">LIST YOUR PROPERTY</div>
            </a>
         </div>
      </div>
      
      
      <div class="text-center">
         <h2 class="mt-5">OUR PARTNERS</h2>
      </div>
      
    
      <div class="row pt-4">    
      <div class="col-lg-2 col-md-4 col-6 px-md-1 pb-1" data-aos="fade-right">
            <img class="img-fluid clint-logo" alt="Emaar Logo" src="assets/img/p4.png">
         </div>
         <div class="col-lg-2 col-md-4 col-6 px-md-1 pb-1" data-aos="fade-left">
            <img class="img-fluid clint-logo" alt="Nakheel Developer Logo" src="assets/img/p7.png">
         </div>
         <div class="col-lg-2 col-md-4 col-6 px-md-1 pb-1" data-aos="fade-right">
            <img class="img-fluid clint-logo" alt="Nshama Developer Logo" src="assets/img/p6.png">
         </div>
         <div class="col-lg-2 col-md-4 col-6 px-md-1 pb-1" data-aos="fade-left">
            <img class="img-fluid clint-logo" alt="Select Group Logo" src="assets/img/p12.png">
         </div>
        
         <div class="col-lg-2 col-md-4 col-6 px-md-1 pb-1" data-aos="fade-left">
            <img class="img-fluid clint-logo" alt="Ellington Properties Logo" src="assets/img/p3.png">
         </div>
    
         <div class="col-lg-2 col-md-4 col-6 px-md-1 pb-1" data-aos="fade-right">
            <img class="img-fluid clint-logo" alt="Danube Properties Logo" src="assets/img/p5.png">
         </div>
         
         <div class="col-lg-2 col-md-4 col-6 px-md-1 pb-1" data-aos="fade-left">
            <img class="img-fluid clint-logo" alt="Damac Developer Logo" src="assets/img/p8.png">
         </div>
         <div class="col-lg-2 col-md-4 col-6 px-md-1 pb-1" data-aos="fade-left">
            <img class="img-fluid clint-logo" alt="Samana Developer Logo" src="assets/img/p9.png">
         </div>
         <div class="col-lg-2 col-md-4 col-6 px-md-1 pb-1" data-aos="fade-right">
            <img class="img-fluid clint-logo" alt="Sobha Reality Logo" src="assets/img/p10.png">
         </div>
         <div class="col-lg-2 col-md-4 col-6 px-md-1 pb-1" data-aos="fade-right">
            <img class="img-fluid clint-logo" alt="Tilal Al Ghaaf  Logo" src="assets/img/p11.png">
         </div>
         <div class="col-lg-2 col-md-4 col-6 px-md-1 pb-1" data-aos="fade-right">
            <img class="img-fluid clint-logo" alt="Meraas Developer Logo" src="assets/img/p1.png">
         </div>
          <div class="col-lg-2 col-md-4 col-6 px-md-1 pb-1" data-aos="fade-left">
            <img class="img-fluid clint-logo" alt="Azizi Developer Logo" src="assets/img/p2.png">
         </div>
      </div>
   </div>
</section>

<section style="background:#white;margin: 0px 20px 0px 20px;">
      <div class="row justify-content-center">
          <div class="col-lg-3 col-md-5 md-md-0 mb-3"></div>
         <div class="col-lg-3 col-md-5 md-md-0 mb-3" style="margin: 25px;">
            <a href="https://www.diamondcityre.com/developer/">
               <div class="btn-black text-center">View All</div>
            </a>
         </div>
         <div class="col-lg-3 col-md-5 md-md-0 mb-3">
         </div>
      </div>
 </section>


<section style="background:#ede9e952;margin: 20px 20px 0px 20px;" class="pt-pb-50" data-aos="fade-up">  
		<div class="container">     
	    	<div class="text-center">      
		    	<h2 class="mb-4">TOP RESIDENTIAL COMMUNITIES IN DUBAI 2024</h2>         
		    </div>    
		<p class="text-center mb-5 px-md-5">Dubai is one of the best places to live in the world. But where are the best communities to live in Dubai, including the gated communities you may also look for?</p>  
			
</section>			

<section style="background:#ede9e952;margin: 0px 20px 0px 20px;" >
    <div class="container">
    <!-- Blog 1st Row -->			
			<div class="row">   
			
			   
			
				 <div class="col-md-3 mb-3" data-aos="fade-right">     
    			 <a href="https://www.diamondcityre.com/community/properties-for-sale-dubai-creek-harbour"><img src="https://manage.tanamiproperties.com/Township/Township_Image/9/Thumb/9.jpg" class="img-fluid"
                      alt="Emaar Dubai Creek Harbour Community"> </a> 
    			    <div class="text-center p-4 card-b ">          
        			    <h5 class="card-h mb-3">Dubai Creek Harbour</h5>
        			    <p class="mb-4">Dubai Creek Harbour will be both a financially viable and ecologically responsible city, built with future generations in mind.. </p>     
        			    <a href="https://www.diamondcityre.com/community/properties-for-sale-dubai-creek-harbour" class="btn-black text-center">Read More</a>
    				</div>      
    			</div>  
				
    			<div class="col-md-3 mb-3" data-aos="fade-right">     
    			 <a href="https://www.diamondcityre.com/community/properties-for-sale-dubai-hills-estate"><img src="https://manage.tanamiproperties.com/Township/Township_Image/7/Thumb/7.jpg" class="img-fluid"
                      alt="Emaar Dubai Hills Estate"> </a> 
    			    <div class="text-center p-4 card-b ">          
        			    <h5 class="card-h mb-3">Dubai Hills Estate</h5>
        			    <p class="mb-4">Overlooking an 18-hole championship golf course, Dubai Hills Estate by ace developer Emaar Properties ...</p>     
        			    <a href="https://www.diamondcityre.com/community/properties-for-sale-dubai-hills-estate" class="btn-black text-center">Read More</a>
    				</div>      
    			</div>  
			     <div class="col-md-3 mb-3" data-aos="fade-right">     
    			 <a href="https://www.diamondcityre.com/community/properties-for-sale-in-the-heights-country-club-wellness-by-emaar"><img src="https://www.diamondcityre.com/assets/img/community/The-Height-Country-Club-Wellness.png" class="img-fluid"
                      alt="Emaar Dubai Creek Harbour Community"> </a> 
    			    <div class="text-center p-4 card-b ">          
        			    <h5 class="card-h mb-3">The Heights Country Club & Welness</h5>
        			    <p class="mb-4">The Heights Country Club & Wellness by EMAAR Properties, a premier development in Dubai.</p>     
        			    <a href="https://www.diamondcityre.com/community/properties-for-sale-in-the-heights-country-club-wellness-by-emaar" class="btn-black text-center">Read More</a>
    				</div>      
    			</div>  
    			 <div class="col-md-3 mb-3" data-aos="fade-right">     
    			    <a href="https://www.diamondcityre.com/community/properties-for-sale-the-oasis-by-Emaar"><img src="https://www.diamondcityre.com/assets/img/community/the-oasis/the-oasis-by-emaar-diamond-city-real-estate.png" class="img-fluid" alt="The Oasis By Emaar"> </a>
    			    <div class="text-center p-4 card-b ">          
        			    <h5 class="card-h mb-3">The Oasis</h5>
        			    <p class="mb-4">The Oasis exclusive collection of 4, 5, and 6-bedroom villas and mansions at The Oasis by Emaar..</p>     
        			    <a href="https://www.diamondcityre.com/community/properties-for-sale-the-oasis-by-Emaar" class="btn-black text-center">Read More</a>
    				</div>      
    			</div>  
			   
			</div>
			</div>
   	</section>
   <!--	
   	<section style="background:#ede9e952;margin: 0px 20px 0px 20px;">
    <div class="container">
   			
			<div class="row">   
			        
			       
		
			        
			       <div class="col-md-3 mb-3" data-aos="fade-right">     
    			   <a href="https://www.diamondcityre.com/community/properties-for-sale-the-valley-by-emaar"><img src="https://manage.tanamiproperties.com/Township/Township_Image/80/Thumb/80.jpg" class="img-fluid"
                      alt="Responsive image"></a> 
    			    <div class="text-center p-4 card-b ">          
        			    <h5 class="card-h mb-3">The Valley</h5>
        			    <p class="mb-4">The Valley best-known for its affordable housing investment communities in the UAE. The community is well known ...</p>     
        			    <a href="https://www.diamondcityre.com/community/properties-for-sale-the-valley-by-emaar" class="btn-black text-center">Read More</a>
    				</div>      
				</div>  
				 <div class="col-md-3 mb-3" data-aos="fade-right">     
    			   <a href="https://www.diamondcityre.com/community/properties-for-sale-the-valley-by-emaar"><img src="https://manage.tanamiproperties.com/Township/Township_Image/80/Thumb/80.jpg" class="img-fluid"
                      alt="Responsive image"></a> 
    			    <div class="text-center p-4 card-b ">          
        			    <h5 class="card-h mb-3">The Valley</h5>
        			    <p class="mb-4">The Valley best-known for its affordable housing investment communities in the UAE. The community is well known ...</p>     
        			    <a href="https://www.diamondcityre.com/community/properties-for-sale-the-valley-by-emaar" class="btn-black text-center">Read More</a>
    				</div>      
				</div>  
				
	
			</div>
			</div>
 </section>
 -->
 <section style="background:#ede9e952;margin: 0px 20px 0px 20px;">
      <div class="row justify-content-center">
          <div class="col-lg-3 col-md-5 md-md-0 mb-3"></div>
         <div class="col-lg-3 col-md-5 md-md-0 mb-3" style="margin: 25px;">
            <a href="https://www.diamondcityre.com/community/">
               <div class="btn-black text-center">View All</div>
            </a>
         </div>
         <div class="col-lg-3 col-md-5 md-md-0 mb-3"></a>
         </div>
      </div>
 </section>
 
<!--
<section class="pt-pb-100">
  <div class="container">
     <div class="text-center">
        <h2 class="pb-4 px-3">POPULAR AREAS IN DUBAI</h2>
     </div>
     <div class="row mb-3">
        <div class="mx-1 mb-2 w-h bg-area-1 d-flex justify-content-center align-items-center"
             style="background-size: cover; background-image: url('assets/img/dubai-marina.jpg');"
             data-aos="fade-right">
           <div class="text-center">
              <h3 class="p-area-h3" data-aos="fade-right">Dubai Marina</h3>

           </div>
        </div>
        <div class="mx-1 mb-2 w-h-1 bg-area-1 mx-md-0 d-flex justify-content-center align-items-center"
             style="background-size: cover; background-image: url('assets/img/Downtown-dubai.jpg');"
             data-aos="fade-up">
           <div class="text-center">
              <h3 class="p-area-h3" data-aos="fade-up">Downtown Dubai</h3>

           </div>
        </div>
        <div class="mx-1 mb-2 w-h bg-area-1 d-flex justify-content-center align-items-center"
             style="background-size: cover; background-image: url('assets/img/Arabian-Ranches-EMAAR.jpg');"
             data-aos="fade-left">
           <div class="text-center">
              <h3 class="p-area-h3" data-aos="fade-left">Arabian Ranches</h3>

           </div>
        </div>
        <div class="mx-1 mb-2 w-h-1 bg-area-1 d-flex justify-content-center align-items-center h-pic"
             style="background-size: cover;  background-image: url('assets/img/creek-harbour.webp');"
             data-aos="fade-right">
           <div class="text-center">
              <h3 class="p-area-h3" data-aos="fade-right">Creek Harbour</h3>

           </div>
        </div>
        <div class="mx-1 mb-2 w-h bg-area-1 d-flex justify-content-center align-items-center"
             style="background-size: cover; height: 270px; background-image: url('assets/img/palm_jumeirah1.jpg');"
             data-aos="fade-up">
           <div class="text-center">
              <h3 class="p-area-h3" data-aos="fade-up">Palm Jumeirah</h3>

           </div>
        </div>
        <div class="mx-1 mb-2 w-h bg-area-1 d-flex justify-content-center align-items-center"
             style="background-size: cover; height: 270px; background-image: url('assets/img/citywalk.jpg');"
             data-aos="fade-right">
           <div class="text-center">
              <h3 class="p-area-h3" data-aos="fade-right">City Walk</h3>

           </div>
        </div>


     </div>
</section>
-->

<!--
<section class="pb-100">
   <div class="container">
       <div class="row">
         <div class="col-sm-12">
            <h2 class="text-center mb-md-3 mt-5" data-aos="fade-up">Featured Ready Properties</h2>
         </div>
      </div>
     
       <div class="row mb-3">
        <div class="col-md-6">
          <div class="d-flex my-3 my-md-1">
            <div class="d-flex my-1">
              <span class="sort-by px-2">Sort By: </span>
              <div class="dropdown">
                <a class="dropdown-toggle order-sort" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                  Default Order
                </a>

                <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
             <div class="col-md-6">
          <div class="d-flex justify-content-md-end d-flex my-2 my-md-1">
            <a href="index.php?prop=all"><div class="sort-p-r active-2 ms-0">All Properties</div></a>
            <a href="index.php?prop=buy"><div class="sort-p-r">For Buy</div></a>
            <a href="index.php?prop=rent"><div class="sort-p-r">For Rent</div></a>
          </div>
        </div>
      </div> 
      <div class="row">
         <div class="col-12 mb-3 tabs-details d-flex justify-content-end">
            <ul class="nav nav-pills " id="pills-tab" role="tablist">
               <li class="nav-item" role="presentation">
                  <button class="sort-p-r bg-transparent border-0 ms-1 active" id="pills-details-tab"
                          data-bs-toggle="pill" data-bs-target="#pills-details" type="button" role="tab"
                          aria-controls="pills-details" aria-selected="false" tabindex="-1">All Properties
                  </button>
               </li>
               <li class="nav-item" role="presentation">
                  <button class="sort-p-r bg-transparent border-0 ms-1" id="pills-gallery-tab" data-bs-toggle="pill"
                          data-bs-target="#pills-gallery" type="button" role="tab" aria-controls="pills-gallery"
                          aria-selected="false" tabindex="-1">For Sale
                  </button>
               </li>
               <li class="nav-item" role="presentation">
                  <button class="sort-p-r bg-transparent border-0 ms-1" id="pills-location-tab" data-bs-toggle="pill"
                          data-bs-target="#pills-location" type="button" role="tab" aria-controls="pills-location"
                          aria-selected="false" tabindex="-1">For Rent
                  </button>
               </li>
            </ul>
         </div>
         <div class="col-12">

            <div class="tab-content" id="pills-tabContent">
               <div class="tab-pane fade show active" id="pills-details" role="tabpanel"
                    aria-labelledby="pills-details-tab" tabindex="0">
                  <div class="row">
                     <?php

                     $sql = "SELECT * FROM properties where featured =1 ORDER BY RAND() limit 8";
                     $result = mysqli_query($conn, $sql);

                     while ($row = mysqli_fetch_array($result))
                     {
                        $p_id = $row['id'];

                        $result1 = mysqli_query($conn, "SELECT * FROM gallery_images where property_id =$p_id LIMIT 1");
                        $img_detail = mysqli_fetch_array($result1);
                        $title = $row['title'];
                        $title = str_replace(' | ', '-', $title);
                        $title = str_replace(' ', '', $title);
                        ?>
                        <div class="col-md-6 col-lg-3 mb-4">
                           <a href="https://www.diamondcityre.com/sell/<?php echo $row['id']; ?>/<?php echo $title; ?>">
                              <div class="box-fp">
                                 <div class="p-3 img-fp position-relative"
                                      style="background-image: url('dcity/public/assets/img/<?php echo $row['img1'] ?>');    background-size: cover;">
                                    <button class="tags-fp"><?php echo $row['tags'] ?></button>

                                    <?php
                                    if ($row['featured'] == 1)
                                    {
                                       ?>
                                       <button class="tags-fp">Featured</button>
                                       <?php
                                    }
                                    ?>
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
                                                echo '<span> <img src="assets/img/bedrooms.png"  style="width: 23px; height: 23px;" alt="bedroom transparent icons"> </span><br>';
                                             }
                                             ?>
                                                 
                                         <span class="box-fp-sub"> Beds</span>
                                         </div>
                                                 
                                          <div class="box-fp-no ms-4"><?php echo $row['bath_rooms'] ?> <span> <img
                                                      src="assets/img/bathrooms.png" style="width: 23px;
                                                  height: 23px;" alt="Bathroom transparent icons"> </span> <br><span class="box-fp-sub"> Baths</span>
                                          </div>
                                          <div class="box-fp-no ms-4"><?php echo number_format($row['measurements']); ?>
                                             <span> <img src="assets/img/squre.png" style="    width: 23px;
                                                 height: 23px;" alt="Plot Area size icon"> </span><br><span class="box-fp-sub"> Square (ft)</span>
                                          </div>
                                       </div>
                                    </div>
                                    <h6 class="h-35"><?php echo $row['title']; ?></h6>
                                 </div>
                              </div>
                           </a>
                        </div>

                     <?php } ?>

                  </div>
               </div>
               <div class="tab-pane fade" id="pills-gallery" role="tabpanel" aria-labelledby="pills-gallery-tab"
                    tabindex="0">
                  <div class="row">
                     <?php

                     $sql = "SELECT * FROM properties where featured =1 AND tags = 'sale' ORDER BY RAND() limit 8";
                     $result = mysqli_query($conn, $sql);


                     // echo "<pre>";
                     // print_r($row);
                     // die;
                     while ($row = mysqli_fetch_array($result))
                     {
                        $p_id = $row['id'];

                        $result1 = mysqli_query($conn, "SELECT * FROM gallery_images where property_id =$p_id LIMIT 1");
                        $img_detail = mysqli_fetch_array($result1);
                        $title = $row['title'];
                        $title = str_replace(' | ', '-', $title);
                        $title = str_replace(' ', '', $title);

                        ?>
                        <div class="col-md-6 col-lg-3 mb-4">
                           <a href="https://www.diamondcityre.com/sell/<?php echo $row['id']; ?>/<?php echo $title; ?>">
                              <div class="box-fp">
                                 <div class="p-3 img-fp position-relative"
                                      style="background-image: url('dcity/public/assets/img/<?php echo $row['img1'] ?>');  background-size: cover;">
                                    <button class="tags-fp"><?php echo $row['tags'] ?></button>

                                    <?php
                                    if ($row['featured'] == 1)
                                    {
                                       ?>
                                       <button class="tags-fp">Featured</button>
                                       <?php
                                    }
                                    ?>
                                 </div>

                                 <div class="p-3">
                                    <div class="aed-no"><?php echo number_format($row['price']) ?> <span class="aed"> AED</span>
                                    </div>
                                    <div class="d-flex my-2">
                                       <div class="d-flex">
                                          <div class="box-fp-no"><?php echo $row['bed_rooms'] ?> <span> <img
                                                      src="assets/img/bedrooms.png " style="    width: 23px;
                                         height: 23px;" alt="Bedroom icon"> </span><br><span class="box-fp-sub"> Beds</span></div>
                                          <div class="box-fp-no ms-4"><?php echo $row['bath_rooms'] ?> <span> <img
                                                      src="assets/img/bathrooms.png" style="    width: 23px;
                                          height: 23px;" alt="Bathroom icon"> </span> <br><span class="box-fp-sub"> Baths</span></div>
                                          <div class="box-fp-no ms-4"><?php echo number_format($row['measurements']); ?>
                                             <span> <img src="assets/img/squre.png" style="    width: 23px;
                                         height: 23px;" alt="Area Size icon"> </span><br><span class="box-fp-sub"> Square (ft)</span></div>
                                       </div>
                                    </div>
                                    <h6 class="h-35"><?php echo $row['title']; ?></h6>
                                 </div>
                              </div>
                           </a>
                        </div>

                     <?php } ?>


                  </div>
                  <div class="text-center mt-4">
                     <a href="https://www.diamondcityre.com/buy.php" class="btn-black">VIEW MORE</a>
                  </div>
               </div>
               <div class="tab-pane fade" id="pills-location" role="tabpanel" aria-labelledby="pills-location-tab"
                    tabindex="0">
                  <div class="row">
                     <?php

                     $sql = "SELECT * FROM properties where featured =1 AND tags = 'rent' ORDER BY RAND() limit 8";
                     $result = mysqli_query($conn, $sql);


                     // echo "<pre>";
                     // print_r($row);
                     // die;
                     while ($row = mysqli_fetch_array($result))
                     {
                        $p_id = $row['id'];

                        $result1 = mysqli_query($conn, "SELECT * FROM gallery_images where property_id =$p_id LIMIT 1");
                        $img_detail = mysqli_fetch_array($result1);
                        $title = $row['title'];
                        $title = str_replace(' | ', '-', $title);
                        $title = str_replace(' ', '', $title);

                        ?>
                        <div class="col-md-6 col-lg-3 mb-4">
                           <a href="https://www.diamondcityre.com/sell/<?php echo $row['id']; ?>/<?php echo $title; ?>">
                              <div class="box-fp">
                                 <div class="p-3 img-fp position-relative"
                                      style="background-image: url('dcity/public/assets/img/<?php echo $row['img1'] ?>');     background-size: cover;">
                                    <button class="tags-fp"><?php echo $row['tags'] ?></button>

                                    <?php
                                    if ($row['featured'] == 1)
                                    {
                                       ?>
                                       <button class="tags-fp">Featured</button>
                                       <?php
                                    }
                                    ?>
                                 </div>

                                 <div class="p-3">
                                    <div class="aed-no"><?php echo number_format($row['price']) ?> <span class="aed"> AED</span>
                                    </div>
                                    <div class="d-flex my-2">
                                       <div class="d-flex">
                                          <div class="box-fp-no"><?php echo $row['bed_rooms'] ?> <span> <img
                                                      src="assets/img/bedrooms.png " style="    width: 23px;
                                         height: 23px;" alt="Transparent bedroom icon"> </span><br><span class="box-fp-sub"> Beds</span></div>
                                          <div class="box-fp-no ms-4"><?php echo $row['bath_rooms'] ?> <span> <img
                                                      src="assets/img/bathrooms.png" style="    width: 23px;
                                          height: 23px;" alt="bathroom icon"> </span> <br><span class="box-fp-sub"> Baths</span></div>
                                          <div class="box-fp-no ms-4"><?php echo number_format($row['measurements']); ?>
                                             <span> <img src="assets/img/squre.png" style="    width: 23px;
                                         height: 23px;" alt="measurement icon"> </span><br><span class="box-fp-sub"> Square (ft)</span></div>
                                       </div>
                                    </div>
                                    <h6 class="h-35"><?php echo $row['title']; ?></h6>
                                 </div>
                              </div>
                           </a>
                        </div>

                     <?php } ?>
                  </div>
                  <div class="text-center mt-4">
                     <a href="https://www.diamondcityre.com/lease.php" class="btn-black">VIEW MORE</a>
                  </div>
               </div>
            </div>
         </div>

      </div>
</section>
-->



<!-- Service 
<section class="service" id="Service">
	<div class="container">
    
            	<div class="text-center">      
		    	<h2 class="mt-4">New Off-Plan Properties for Sale in Dubai</h2>     
		    		<p class="text-center mb-5 px-md-5">Dubai is one of the best places to live in the world. But where are the best communities to live in Dubai, including the gated communities you may also look for?</p>  
		    </div>   
    
    
      <div class="row">
        <div class="col-sm-12">
          <div id="service-slider" class="owl-carousel">
         
            <div class="item">
              <div class="service-items">
                        
                    <figure class="figure tag tag-featured">
                            <img class="service-slider-image "  src="https://www.diamondcityre.com/dcity/public/assets/img/171629575559.png" alt="featured image" class="figure-img"><br>
                             <a href="#"> <i class="fa fa-map-marker" style="font-size:16px"></i>&nbsp;&nbsp;Dubai Hills Estate</a>
                    </figure>
                      <br> <h2>Park Lane</h2>
                            <div class=" pb-3 off-plans"><p style="font-size: small;">from AED 850,000<br> Developer - Emaar <br> Hanover - Q4 2028</p></div>
                            <div class=""><a href="project/82/Park-Lane-Interiors-by-VIDA" class="btn-black" style="font-size:16px !important;">View Details</a></div>
                    
              </div>
            </div>
          
             <div class="item">
              <div class="service-items">
                        
                    <figure class="figure tag tag-featured">
                            <img class="service-slider-image "  src="https://www.diamondcityre.com/dcity/public/assets/img/171629575559.png" alt="featured image" class="figure-img"><br>
                             <a href="#"> <i class="fa fa-map-marker" style="font-size:16px"></i>&nbsp;&nbsp;Dubai Hills Estate</a>
                    </figure>
                      <br> <h2>Park Lane</h2>
                            <div class=" pb-3 off-plans"><p style="font-size: small;">from AED 850,000<br> Developer - Emaar <br> Hanover - Q4 2028</p></div>
                            <div class=""><a href="project/82/Park-Lane-Interiors-by-VIDA" class="btn-black" style="font-size:16px !important;">View Details</a></div>
                    
              </div>
            </div>
           
         <div class="item">
              <div class="service-items">
                        
                    <figure class="figure tag tag-featured">
                            <img class="service-slider-image "  src="https://www.diamondcityre.com/dcity/public/assets/img/171629575559.png" alt="featured image" class="figure-img"><br>
                             <a href="#"> <i class="fa fa-map-marker" style="font-size:16px"></i>&nbsp;&nbsp;Dubai Hills Estate</a>
                    </figure>
                      <br> <h2>Park Lane</h2>
                            <div class=" pb-3 off-plans"><p style="font-size: small;">from AED 850,000<br> Developer - Emaar <br> Hanover - Q4 2028</p></div>
                            <div class=""><a href="project/82/Park-Lane-Interiors-by-VIDA" class="btn-black" style="font-size:16px !important;">View Details</a></div>
                    
              </div>
            </div>
          
          <div class="item">
              <div class="service-items">
                        
                    <figure class="figure tag tag-featured">
                            <img class="service-slider-image "  src="https://www.diamondcityre.com/dcity/public/assets/img/171629575559.png" alt="featured image" class="figure-img"><br>
                             <a href="#"> <i class="fa fa-map-marker" style="font-size:16px"></i>&nbsp;&nbsp;Dubai Hills Estate</a>
                    </figure>
                      <br> <h2>Park Lane</h2>
                            <div class=" pb-3 off-plans"><p style="font-size: small;">from AED 850,000<br> Developer - Emaar <br> Hanover - Q4 2028</p></div>
                            <div class=""><a href="project/82/Park-Lane-Interiors-by-VIDA" class="btn-black" style="font-size:16px !important;">View Details</a></div>
                    
              </div>
            </div>
           
 <div class="item">
              <div class="service-items">
                        
                    <figure class="figure tag tag-featured">
                            <img class="service-slider-image "  src="https://www.diamondcityre.com/dcity/public/assets/img/171629575559.png" alt="featured image" class="figure-img"><br>
                             <a href="#"> <i class="fa fa-map-marker" style="font-size:16px"></i>&nbsp;&nbsp;Dubai Hills Estate</a>
                    </figure>
                      <br> <h2>Park Lane</h2>
                            <div class=" pb-3 off-plans"><p style="font-size: small;">from AED 850,000<br> Developer - Emaar <br> Hanover - Q4 2028</p></div>
                            <div class=""><a href="project/82/Park-Lane-Interiors-by-VIDA" class="btn-black" style="font-size:16px !important;">View Details</a></div>
                    
              </div>
            </div>
         
           
             <div class="item">
              <div class="service-items">
                        
                    <figure class="figure tag tag-featured">
                            <img class="service-slider-image "  src="https://www.diamondcityre.com/dcity/public/assets/img/171629575559.png" alt="featured image" class="figure-img"><br>
                             <a href="#"> <i class="fa fa-map-marker" style="font-size:16px"></i>&nbsp;&nbsp;Dubai Hills Estate</a>
                    </figure>
                      <br> <h2>Park Lane</h2>
                            <div class=" pb-3 off-plans"><p style="font-size: small;">from AED 850,000<br> Developer - Emaar <br> Hanover - Q4 2028</p></div>
                            <div class=""><a href="project/82/Park-Lane-Interiors-by-VIDA" class="btn-black" style="font-size:16px !important;">View Details</a></div>
                    
              </div>
            </div>
            
            
    
            
          </div>
        </div>
      </div>
      </div>
      
       
    </section>
    END OF Service -->




<section class="pt-pb-100" style="background: #0B132B;">
  <div class="row d-flex justify-content-center">
    <div class="col-md-10 col-xl-8 text-center">
     <h2 class="text-center text-white mb-4" data-aos="fade-left">CLIENT TESTIMONIALS
       <!--  <img src="assets/img/google-review.png" alt="" class="img-fluid position-absolute google-review"> -->
      </h2>
     <h3 class="text-white"><strong>Trusted and Loved – 4.8 Google Rating </strong></h3>
     
    </div>
  </div>
         <div class="container mt-5" >
              <div class="row text-left text-white">
                <div class="col-md-3 mb-5 mb-md-0">
                  <div class="d-flex justify-content-center mb-4">
                    <img src="/assets/img/Google-Reviews-Diamond-City-Real-Estate.png"
                      class="rounded-circle shadow-1-strong" width="75" height="75" />
                  </div>
                  <ul class="list-unstyled d-flex justify-content-center mb-0">
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                  </ul>
                  
                  <h5 class="mt-3 text-center">Rupal P</h5>
                
                  <p class="px-xl-3 text-white">
                    <i class="fas fa-quote-left pe-2"></i>I recently had the pleasure of working with Diamond City Real Estate to purchase my first home, and I cannot express how grateful I am for her exceptional service. From the very beginning, Sadaf, demonstrated a level of expertise and that truly set her apart ( before her i engaged with atleast 6 more agents ) Sadaf exhibited an extensive knowledge of the real estate market, providing invaluable insights and guidance throughout the entire process. Her expertise was evident in her ability to identify properties that aligned perfectly with my preferences and budget.
                  </p>
                 
                </div>
                <div class="col-md-3 mb-5 mb-md-0">
                  <div class="d-flex justify-content-center mb-4">
                    <img src="/assets/img/Google-Reviews-Diamond-City-Real-Estate.png"
                      class="rounded-circle shadow-1-strong" width="75" height="75" />
                  </div>
                   <ul class="list-unstyled d-flex justify-content-center mb-0">
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                  </ul>
                  <h5 class="mt-3 text-center">Ashish D</h5>
                 
                  <p class="px-xl-3 text-white">
                    <i class="fas fa-quote-left pe-2"></i>As first-time home buyers with very little knowledge about real estate, finding the right place was a daunting task. We were fortunate to meet Sadaf from Diamond City Real Estate who helped us to find our dream home. When I had certain constrains in processing my loan on time, Sadaf played an important role in holding the deal on with the Seller. Her professionalism, knowledge, and right working ethos are highly respected and appreciated. I would certainly recommend her to anyone looking for their new home. Thanks again Diamond City Real Estate Team for being such a pleasure to work with.
                  </p>
                 
                </div>
                <div class="col-md-3 mb-0">
                  <div class="d-flex justify-content-center mb-4">
                    <img src="/assets/img/Google-Reviews-Diamond-City-Real-Estate.png"
                      class="rounded-circle shadow-1-strong" width="75" height="75" />
                  </div>
                  
                    <ul class="list-unstyled d-flex justify-content-center mb-0">
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                  </ul>
                  <h5 class="mt-3 text-center">Bater Makhabel</h5>
             
                  <p class="px-xl-3 text-white">
                    <i class="fas fa-quote-left pe-2"></i>I had the pleasure of working with Sufi Ahmed for my real estate needs, and I couldn't be more satisfied with the experience. Sufi's extensive knowledge of the market, coupled with her professionalism and genuine care for her clients, set her apart. Sufi guided me through every step of the process with patience and expertise, making the entire transaction seamless. If you're looking for a dedicated and trustworthy real estate agent, look no further than Sufi Ahmed. Highly recommended!
                  </p>
                
                </div>
                
                 <div class="col-md-3 mb-0">
                  <div class="d-flex justify-content-center mb-4">
                    <img src="/assets/img/Google-Reviews-Diamond-City-Real-Estate.png"
                      class="rounded-circle shadow-1-strong" width="75" height="75" />
                  </div>
                  
                    <ul class="list-unstyled d-flex justify-content-center mb-0">
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                    <li>
                      <i class="fas fa-star fa-sm text-warning"></i>
                    </li>
                  </ul>
                  <h5 class="mt-3 text-center">Stella Wong</h5>
             
                  <p class="px-xl-3 text-white">
                    <i class="fas fa-quote-left pe-2"></i>They are very experienced and helpful in both selling and buying. They helped me selling my properties not only at the best value, but also took care of all the troublesome procedures, including those in the land department and different bills settlement, which, as a foreigner, I could hardly handle!
I strongly recommend Diamond City Real Estate as your partner in property investment in Dubai!</p>
                
                </div>
        </div>
         <div class="text-center mt-5">
         <button type="button" class="btn-white" data-bs-toggle="modal" data-bs-target="#exampleModal">BOOK A FREE CONSULTATION</button>
      </div>
    </div>
</section>
<!--

<section class="pt-pb-100" style="background: #0B132B;">
   <div class="container">
      <h2 class="text-center text-white mb-4" data-aos="fade-left">CLIENT TESTIMONIALS
       <!--  <img src="assets/img/google-review.png" alt="" class="img-fluid position-absolute google-review"> -->
      </h2>
      <p class="text-center text-white mb-5"></p>
      
      <!--
      <div class="testimonial mx-md-auto">
         <div class="wrapper-for-arrows">
            <div style="opacity: 0;" class="chicken"></div>
            <div id="reviewWrap" class="review-wrap py-md-4 py-3">
               <div id="imgDiv" class="hidden"></div>
               <div id="profession" class="text-white"></div>
               <div id="description" class="text-white mb-0 h-100" data-aos="fade-right"></div>
               <div id="personName" class="text-white"></div>
            </div>
            <div class="left-arrow-wrap arrow-wrap">
               <div class="arrow text-white" style="font-size: 30px;" id="leftArrow"><i class="fa fa-angle-left" aria-hidden="true"></i></div>
            </div>
            <div class="right-arrow-wrap arrow-wrap">
               <div class="arrow text-white" style="font-size: 30px;" id="rightArrow"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
            </div>
         </div>
      </div>
     
     
   </div>
</section>  -->

<section>
   <div class="container pt-100 pb-100">
      <div class="row">
         <div class="col-md-6 col-lg-4 mx-auto mb-4 mb-md-4">
            <div class="text-center p-5 h-100 card-b mb-4" style="background: #0B132B;" data-aos="fade-up">
               <img src="assets/img/circle1.png" class="img-fluid mb-4" style="width: 80px;" alt="Round icon circle icon">
               <h5 class="card-h mb-3 card-height text-white" data-aos="fade-right">Receive Exclusive Updates</h5>
               <p class="text-center card-p card-p-h text-white" data-aos="fade-right">Our dedicated team of property
                  advisors stay ahead of the market curve, ensuring our clients have access to pre-release information
                  on Dubai's most lucrative investment opportunities.
                  Subscribe below to stay updated. </p>
               <button type="button" class="btn-white mt-3" data-bs-toggle="modal" data-bs-target="#subscribeModal">
                  SUBSCRIBE
               </button>
               <!--<button class="btn-white mt-3"><a href="contact.php" class="text-white">SUBSCRIBE</a></button>-->
            </div>
         </div>
         <div class="col-md-6 col-lg-4 mx-auto mb-4 mb-md-4">
            <div class="text-center p-5 card-b h-100 mb-4" style="background: #0B132B;" data-aos="fade-up">
               <img src="assets/img/card.png" class="img-fluid mb-4" style="width: 80px;" alt="Card icon for web">
               <h5 class="card-h mb-3 card-height text-white" data-aos="fade-up">Book a free consultation</h5>
               <p class="text-center card-p card-p-h text-white " data-aos="fade-up">Our property consultants will
                  advise you on the best real estate investment opportunities that ensure maximum maximum returns on
                  your investment.</p>
               <button type="button" class="h-35 btn-white mt-2 mt-lg-3 mt-md-5" data-bs-toggle="modal"
                       data-bs-target="#exampleModal">BOOK A FREE CONSULTATION
               </button>
            </div>
         </div>
         <div class="col-md-6 col-lg-4 mx-auto mb-4 mb-md-4">
            <div class="text-center p-5 h-100 card-b  mb-4" style="background: #0B132B;" data-aos="fade-left">
               <img src="assets/img/award.png" class="img-fluid mb-4" style="width: 80px;" alt="award goal achievement icon">
               <h5 class="card-h mb-3 card-height text-white" data-aos="fade-left">Read Our Story</h5>
               <p class="text-center card-p card-p-h text-white" data-aos="fade-left">Since our inception over 20 years
                  ago, Diamond City has consistently led the way in providing innovative and distinctive real estate
                  solutions. Our diverse team shares a common objective: to challenge conventions and redefine industry
                  standards to foster our clients' growth alongside ours.
               </p>
               <button class="btn-white mt-3"><a href="https://www.diamondcityre.com/about.php" class="text-white">OUR TEAM</a></button>
            </div>
         </div>
      </div>
      <!--  <div class="row">
         <div class="col-md-5 col-lg-3 col-7 mx-auto">
           <div class="footer-logo">
             <img src="assets/img/f-logo.png" class="img-fluid">
           </div>
         </div>
       </div> -->
   </div>
</section>

<style>
   .nav-item button.active {
    font-weight: 600;
    color: white;
    background-color: #0b132b !important;
      
   }
   .slide-transition {
            transition: all 2.5s ease-in-out !important;
         }
</style>
<!-- <script id="rendered-js">
  document.addEventListener('DOMContentLoaded', function() {

    var slideImages = document.querySelectorAll('.slide'),
      dirRight = document.getElementById('dir-control-right'),
      dirLeft = document.getElementById('dir-control-left'),
      current = 0;

    // If javascript is on, apply styling
    function jsActive() {
      for (var i = 0; i < slideImages.length; i++) {
        slideImages[i].classList.add('slider-active');
      }
    }

    // Clear images
    function reset() {
      for (var i = 0; i < slideImages.length; i++) {
        slideImages[i].classList.remove('slide-is-active');
      }
    }

    // Initialize slider
    function startSlide() {
      reset();
      slideImages[0].classList.add('slide-is-active');
      setInterval(function() {
        slideRight();
      }, 3000); // Change slide every 3 seconds (adjust as needed)
    }

    // Slide left
    function slideLeft() {
      reset();
      if (current === 0) {
        current = slideImages.length - 1;
      } else {
        current--;
      }
      slideImages[current].classList.add('slide-is-active');
    }

    // Slide right
    function slideRight() {
      reset();
      if (current === slideImages.length - 1) {
        current = 0;
      } else {
        current++;
      }
      slideImages[current].classList.add('slide-is-active');
    }

    dirLeft.addEventListener('click', function() {
      slideLeft();
    });

    dirRight.addEventListener('click', function() {
      slideRight();
    });

    // Apply styling
    jsActive();
    startSlide();

  });
</script> -->
</body>
<?php include 'include/footer.php'; ?>
