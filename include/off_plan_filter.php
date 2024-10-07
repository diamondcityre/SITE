<?php
include_once 'helper/helper.php';
include_once 'header_style.php';
$form_action = 'offplan.php';

/*$query = "SELECT off_plans.*, developers.name AS developer_name
                               FROM off_plans
                               LEFT JOIN developers ON developers.id = off_plans.developer
                               WHERE off_plans.STATUS = 0 LIMIT {$offset},{$limit}";*/

$query = "SELECT DISTINCT off_plans.*, developers.name AS developer_name, locations.name AS location_name FROM off_plans ";
$whereClause = " WHERE 1 ";
$joins = "";

if (!empty($_REQUEST['property_type']))
{
   //$joins .= " INNER JOIN `floor_plans` AS floor_type  ON `floor_type`.off_plan_id = `off_plans`.id ";
   //$joins .= " INNER JOIN `property_sub_types` ON `floor_type`.property_sub_type = `property_sub_types`.id ";
   //$whereClause .= " AND `property_sub_types`.type='" . mysqli_real_escape_string($conn, $_REQUEST["property_type"]) . "' ";
   //$whereClause .= " AND `floor_plans`.property_sub_type='" . mysqli_real_escape_string($conn, $_REQUEST["property_type"]) . "' ";
   $whereClause .= " AND off_plans.property_sub_type LIKE '%" . $_REQUEST['property_type'] . "%' ";
   //multiple
   /*$type_arr = $_REQUEST["property_type"];
   $type_like = array(); // Initialize $beds_like as an array
   foreach ($type_arr as $item) {
      $type_like[] = "off_plans.property_sub_type LIKE '%" . $item . "%'";
   }

   if (!empty($type_like)) {
      $whereClause .= " AND (" . implode(' OR ', $type_like) . ")";
   }*/

}

/*if (!empty($_REQUEST["search_keyword"]))
{
   $search_str = mysqli_real_escape_string($conn, $_REQUEST["search_keyword"]);
   $whereClause .= " AND 
         (
            title LIKE '%" . $search_str . "%'
            OR
            developers.name LIKE '%" . $search_str . "%'
            OR
            locations.name LIKE '%" . $search_str . "%'
         )
         ";
}*/

if (!empty($_REQUEST["search_keyword"]))
{
   $selected_keywords = $_REQUEST["search_keyword"];
   $searchCriteria = (array)$_REQUEST["search_keyword"];

   // Ensure $searchCriteria is an array
   if (is_array($searchCriteria))
   {
      // Initialize an array to store conditions
      $conditions = [];

      foreach ($searchCriteria as $item)
      {
         // Extract criterion and search term
         list($criterion, $searchTerm) = explode(':', $item, 2);
         // Escape each search term for use in the SQL query
         $escapedSearchTerm = mysqli_real_escape_string($conn, $searchTerm);
         // Add conditions based on the criterion
         switch ($criterion)
         {
            case 'off_plan':
               $conditions[] = "title LIKE '%" . $escapedSearchTerm . "%'";
               break;
            case 'developer':
               $conditions[] = "developers.name LIKE '%" . $escapedSearchTerm . "%'";
               break;
            case 'location':
               $conditions[] = "locations.name LIKE '%" . $escapedSearchTerm . "%'";
               break;
            // Add more cases for additional criteria if needed
         }
      }
      // Check if there are conditions before adding the WHERE clause
      if (!empty($conditions))
      {
         // Build the final WHERE clause
         $whereClause .= " AND (" . implode(' OR ', $conditions) . ")";
      }
   }
}

$whereClause .= !empty($_REQUEST["ready_years"]) ? " AND YEAR(completion_dat) = " . $_REQUEST["ready_years"] : '';
$whereClause .= !empty($_REQUEST["price_min"]) ? " AND price >= " . $_REQUEST["price_min"] : '';
$whereClause .= !empty($_REQUEST["price_max"]) ? " AND price <= " . $_REQUEST["price_max"] : '';

//$whereClause .= !empty($_REQUEST["min_beds"]) ? " AND bed_rooms = ".$_REQUEST["min_beds"] : '';

if (!empty($_REQUEST["min_beds"]))
{
   /*$joins .= " LEFT JOIN `floor_plans` ON `floor_plans`.off_plan_id = `off_plans`.id  ";
   $whereClause .= " AND floor_plans.type >= ".(int)$_REQUEST["min_beds"];*/

   $min_beds = $_REQUEST['min_beds'];
   if ($min_beds == -1)
   {
      $whereClause .= " AND off_plans.bed_rooms LIKE '%" . $_REQUEST['min_beds'] . "%' ";
   }
   else
   {
      $whereClause .= " AND (  " . implode(' OR ', array_map(function ($val){ return "FIND_IN_SET($val, off_plans.bed_rooms)"; }, range($min_beds, 50))) . " )";
   }


   //multiple search
   /*$beds_arr = $_REQUEST["min_beds"];
   $beds_like = array(); // Initialize $beds_like as an array
   foreach ($beds_arr as $item) {
      $beds_like[] = "off_plans.bed_rooms LIKE '%" . $item . "%'";
   }

   if (!empty($beds_like)) {
      $whereClause .= " AND (" . implode(' OR ', $beds_like) . ")";
   }*/
}

$limit = 9;
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

$offset = ($page - 1) * $limit;

$joins .= " LEFT JOIN `developers` ON `developers`.id = `off_plans`.developer ";
$joins .= " LEFT JOIN `locations` ON `locations`.id = `off_plans`.location ";
$query .= $joins;
$query .= $whereClause;
$query .= " ORDER BY off_plans.id DESC LIMIT $offset, $limit";

/*echo '<pre>';
print_r($query);
echo '</pre>';
exit;*/

$result = mysqli_query($conn, $query);
?>

<section class="pt-100 header_filters" style="border-bottom: 1px solid #D0D0D0; background: #0B132B;">
   <div class="container">
      <div class="text-center d-block d-md-none">
         <button id="toggleButton" class="filter-btn">Filter</button>
      </div>
      <form action="<?php echo $form_action ?>">
         <div class="d-none d-md-block">
            <div class="d-flex">
               <div class="w-25-r px-1">
                  <div class="my-3">
                     <?php
                     echo ajax_search_off_plan();
                     //echo input_search(); ?>
                  </div>
               </div>

               <div class="w-15 px-1">
                  <div class="my-3">
                     <?php echo select_offplan_property_type("ajax_property_type_search", true); ?>
                  </div>
               </div>

               <div class="w-15 px-1">
                  <div class="my-3">
                     <?php echo select_price_min(); ?>
                  </div>
               </div>

               <div class="w-15 px-1">
                  <div class="my-3">
                     <?php echo select_price_max(); ?>
                  </div>
               </div>

               <div class="w-15 px-1">
                  <div class="my-3">
                     <?php echo select_off_plan_min_beds("ajax_beds_search", true); ?>
                  </div>
               </div>

               <div class="w-15 px-1">
                  <div class="my-3">
                     <?php echo select_ready_years(); ?>
                  </div>
               </div>


               <div class="w-15 px-1">
                  <div class="my-3">
                     <button type="submit" class="btn-update">Update</button>
                  </div>
               </div>
            </div>
         </div>
      </form>

      <form action="<?php echo $form_action ?>">
         <div class="d-md-none toggleMe">
            <div class="row">
               <div class="col-md-6">
                  <div class="my-3">
                     <?php
                     echo ajax_search_off_plan("ajax_search_mobile");
                     //echo input_search(); ?>
                  </div>
               </div>
               <div class="col-6">
                  <div class="my-3">
                     <?php echo select_price_min() ?>
                  </div>
               </div>
               <div class="col-6">
                  <div class="my-3">
                     <?php echo select_price_max() ?>
                  </div>
               </div>
               <div class="col-6">
                  <div class="my-3">
                     <?php echo select_off_plan_min_beds("ajax_beds_search_mobile", true); ?>
                  </div>
               </div>
               <div class="col-6">
                  <div class="my-3">
                     <?php echo select_offplan_property_type("ajax_property_type_search_mobile", true); ?>
                  </div>
               </div>

               <div class="col-12">
                  <div class="my-3">
                     <?php echo select_ready_years(); ?>
                  </div>
               </div>

               <div class="col-md-6">
                  <div class="my-3">
                     <button type="submit" class="btn-update w-100">Update</button>
                  </div>
               </div>
            </div>
         </div>
      </form>
   </div>
</section>


<script>
   var selected = '<?php echo (!empty($selected_keywords)) ? $selected_keywords : ''; ?>';
   //var selected_beds = <?php echo (!empty($beds_arr)) ? json_encode($beds_arr) : json_encode([]); ?>;
   //var selected_type = <?php echo (!empty($type_arr)) ? json_encode($type_arr) : json_encode([]); ?>;
   //alert(selected);
   var placeholder = "Location, Developer or Project";
   $(document).ready(function () {
      var $select2 = $('#ajax_search').select2({
         //multiple: "multiple",
         placeholder: placeholder,
         //tags:true
         allowClear: true,
      });

      //var preselectedOptions = ['property:Voluptatibus et veni', 'developer:Dream Homes Realty'];
      /*selected.forEach(function (optionValue) {
       $select2.find('option[value="' + optionValue + '"]').prop('selected', true);
       });*/

      if (selected) {
         $select2.find('option[value="' + selected + '"]').prop('selected', true);
      }

      // Trigger change to update Select2's internal state
      $select2.trigger('change');

      var $select2 = $('#ajax_search_mobile').select2({
         //multiple: "multiple",
         placeholder: placeholder,
         //tags:true
         allowClear: true,
      });

      //var preselectedOptions = ['property:Voluptatibus et veni', 'developer:Dream Homes Realty'];
      /*selected.forEach(function (optionValue) {
       $select2.find('option[value="' + optionValue + '"]').prop('selected', true);
       });*/
      if (selected) {
         $select2.find('option[value="' + selected + '"]').prop('selected', true);
      }

      // Trigger change to update Select2's internal state
      $select2.trigger('change');

      //select2 for beds
      /*var beds_config = {
       //multiple: "multiple",
       placeholder: "Beds",
       }
       var $select2 = $('#ajax_beds_search').select2(beds_config);
       selected_beds.forEach(function (optionValue) {
       $select2.find('option[value="' + optionValue + '"]').prop('selected', true);
       });
       $select2.trigger('change');
       //beds mobile
       var $select2 = $('#ajax_beds_search_mobile').select2(beds_config);
       selected_beds.forEach(function (optionValue) {
       $select2.find('option[value="' + optionValue + '"]').prop('selected', true);
       });
       $select2.trigger('change');


       //select2 for property type
       var $select2 = $('#ajax_property_type_search').select2({
       multiple: "multiple",
       placeholder: "Property Type",
       });
       selected_type.forEach(function (optionValue) {
       $select2.find('option[value="' + optionValue + '"]').prop('selected', true);
       });
       $select2.trigger('change');
       //beds mobile
       var $select2 = $('#ajax_property_type_search_mobile').select2({
       multiple: "multiple",
       placeholder: "Property Type",
       });
       selected_type.forEach(function (optionValue) {
       $select2.find('option[value="' + optionValue + '"]').prop('selected', true);
       });
       $select2.trigger('change');*/

   })
</script>

<style>
   .select2-selection {
      min-height: 46px !important;
      padding: 6px 0 0 10px;
      overflow: hidden;
      font-weight : 400 !important;
      white-space: nowrap;
      font-size: 14px !important;
      font-family: 'Roboto' !important;
      border-radius: 0px !important;
   }

    .select2-container--default .select2-selection--single .select2-selection__placeholder
    {
        color: #707070 !important;
    }
   /* Add this CSS to your stylesheet */
   .select2-container .select2-search--inline .select2-search__field {
      height: 24px; /* Adjust this value based on your design preferences */
      
   }

   .select2-container .select2-selection__arrow {
      display: none;
   }

.select2-results__option {
    padding: 6px;
    border-bottom: 1px solid #8080802b;
    user-select: none;
    color: #707070;
    font-size: 14px !important;
    font-family: 'Roboto' !important;
    -webkit-user-select: none;
}



   /* set text background color */
   .select2-container .select2-selection__choice {
      color: #333; /* Set the desired text color for selected pills */
   }

   /* If you have focused or active styles, you might also need to adjust them */
   .select2-container--focus .select2-selection__choice,
   .select2-container--open .select2-selection__choice {
      color: #333;
   }


</style>
