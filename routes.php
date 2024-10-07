<?php
$routes = array(
   'project/([^/]+)?' => 'page_2.php',
   'off-plan' => 'offplan.php',
   'sell/([^/]+)?' => 'sell_page.php',
);

// Get the query string from the URL
$query_string = $_SERVER['QUERY_STRING'];
$matched_target = null;
// Iterate through the routes to find a match
foreach ($routes as $pattern => $target) {
   if (preg_match("#$pattern#", $query_string, $matches)) {
      $matched_target = $target;
      break; // Stop when the first route matches
   }
}

// If a match is found, proceed to process the route
if ($matched_target !== null) {
   $route_parameters = explode('/', $query_string);
   foreach ($route_parameters as $index => $parameter) {
      $_GET["$index"] = urldecode($parameter);
   }

   // Include the matched target PHP file
   include($matched_target);
   exit;
}
