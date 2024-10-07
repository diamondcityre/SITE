<?php include 'include/header.php'; ?>


<head>  
    <meta charset="utf-8">  

    <title> Properties for Sale in Dubai - Buy your dream Property</title> 
    
    <meta name="keywords" content=" keyword here..">  
    <meta name="description" content="Looking for Properties for sale in Dubai? Contact Diamond City Real Estate in Dubai to find the right Properties for you">  
   
    <meta name="author" content="thisauthor">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">   
    <link rel="canonical" href="https://diamondcityre.com/property-for-sale" />

</head>


<?php
// $sql = "SELECT * FROM properties JOIN gallery_images ON gallery_images.property_id=properties.id WHERE citys.id=$id";
// $result = mysqli_query($conn, "SELECT * FROM job_page_links where status =0" );
$action = 'buy';
include_once 'include/property_filter.php';
include_once 'include/property_body.php';
?>



<?php include 'include/footer.php'; ?>
