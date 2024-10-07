<?php
include_once 'helper/helper.php';
include_once 'header_style.php';

$query = "SELECT * FROM properties ";
$whereClause = " WHERE 1 ";
$joins = "";

if(!empty($action))
{
   $whereClause .= " AND tags = ";
   $whereClause .= ($action == 'lease') ? "'rent'":"'sale'";
}

if(!empty($_REQUEST['property_type']))
{
   $joins .= " INNER JOIN `property_sub_types` ON `properties`.property_sub_type = `property_sub_types`.id ";
   $whereClause .= " AND `property_sub_types`.type='" . mysqli_real_escape_string($conn, $_REQUEST["property_type"]) . "' ";
}


/*if (!empty($_REQUEST["search_keyword"]))
{
   $search_str = mysqli_real_escape_string($conn, $_REQUEST["search_keyword"]);
   $joins .= " LEFT JOIN `communities` ON `communities`.id = `properties`.community ";
   $joins .= " LEFT JOIN `cities` ON `communities`.city_id = `cities`.id ";
   $joins .= " LEFT JOIN `buildings` ON `buildings`.id = `properties`.building ";
   $whereClause .= " AND 
         (
            title LIKE '%" . $search_str . "%'
            OR
            communities.name LIKE '%" . $search_str . "%'
            OR
            cities.name LIKE '%" . $search_str . "%'
            OR
            buildings.name LIKE '%" . $search_str . "%'
         )
         ";
}*/

if (!empty($_REQUEST["search_keyword"])) {
   $selected_keywords = json_encode($_REQUEST["search_keyword"]);
   $searchCriteria = $_REQUEST["search_keyword"];
   
   // Ensure $searchCriteria is an array
   if (is_array($searchCriteria)) {
      // Initialize an array to store conditions
      $conditions = [];

      foreach ($searchCriteria as $item) {
         // Extract criterion and search term
         list($criterion, $searchTerm) = explode(':', $item, 2);
         // Escape each search term for use in the SQL query
         $escapedSearchTerm = mysqli_real_escape_string($conn, $searchTerm);
         // Add conditions based on the criterion
         switch ($criterion) {
            case 'property':
               $conditions[] = "title LIKE '%" . $escapedSearchTerm . "%'";
               break;
            case 'building':
               $conditions[] = "buildings.name LIKE '%" . $escapedSearchTerm . "%'";
               break;
            case 'communities':
               $conditions[] = "communities.name LIKE '%" . $escapedSearchTerm . "%'";
               break;
            // Add more cases for additional criteria if needed
         }
      }
      // Check if there are conditions before adding the WHERE clause
      if (!empty($conditions)) {
         // Build the final WHERE clause
         $whereClause .= " AND (" . implode(' OR ', $conditions) . ")";
      }
      //$joins .= " LEFT JOIN `developers` ON `developers`.id = `properties`.developer ";
      $joins .= " LEFT JOIN `communities` ON `communities`.id = `properties`.community ";
      $joins .= " LEFT JOIN `cities` ON `communities`.city_id = `cities`.id ";
      $joins .= " LEFT JOIN `buildings` ON `buildings`.id = `properties`.building ";
   }
}

$whereClause .= !empty($_REQUEST["price_min"]) ? " AND price >= ".$_REQUEST["price_min"] : '';
$whereClause .= !empty($_REQUEST["price_max"]) ? " AND price <= " . $_REQUEST["price_max"] : '';

$whereClause .= !empty($_REQUEST["min_beds"]) ? " AND bed_rooms = ".$_REQUEST["min_beds"] : '';

$limit = 8;
$page = isset($_GET['page']) ? $_GET['page'] : 1;
$order = (!empty($_GET['order']) && in_array($_GET['order'], ['asc', 'desc'])) ? $_GET['order']:'asc'; //in_array($_GET['order'], ['asc', 'desc']) ? $_GET['order'] : '';
$offset = ($page - 1) * $limit;

$query .= $joins;
$query .= $whereClause;
$query .= " ORDER BY price $order LIMIT $offset, $limit";

//var_dump($query);

$result = mysqli_query($conn, $query);

$form_action = (!empty($action) ? $action:'buy').'.php';
?>

<section class="pt-100 header_filters" style="border-bottom: 1px solid #D0D0D0; background: #0B132B;">
   <div class="container">
      <div class="text-center d-block d-md-none">
         <button id="toggleButton" class="filter-btn">Filter Results</button>
      </div>
      <form id="filter_property_form" action="<?php echo $form_action ?>">
         <div class="d-none d-md-block">
            <div class="d-flex">
               <div class="w-25-r px-1">
                  <div class="my-3">

                     <?php
                      echo ajax_search();
                     /*echo ajax_search();*/ ?>
                  </div>
               </div>

               <div class="w-15 px-1">
                  <div class="my-3">
                     <select name="buy_or_lease" class="form-select" id="buy_or_lease">
                        <option value="buy" <?php echo ($action == 'buy') ? 'selected':''; ?> >Sale</option>
                        <option value="lease" <?php echo ($action == 'lease') ? 'selected':''; ?> >Rent</option>
                     </select>
                  </div>
               </div>

               <div class="w-15 px-1">
                  <div class="my-3">
                     <?php echo select_property_type(); ?>
                  </div>
               </div>

               <div class="w-15 px-1">
                  <div class="my-3">
                     <?php
                     if(!empty($action) && $action == 'lease')
                        echo select_rent_price_min();
                     else
                        echo select_price_min();
                     ?>
                  </div>
               </div>
               <div class="w-15 px-1">
                  <div class="my-3">
                     <?php
                     if(!empty($action) && $action == 'lease')
                        echo select_rent_price_max();
                     else
                        echo select_price_max();
                     ?>
                  </div>
               </div>
               <div class="w-15 px-1">
                  <div class="my-3">
                     <?php echo select_min_beds(); ?>
                  </div>
               </div>

               <div class="w-15 px-1">
                  <div class="my-3">
                     <button type="submit" class="btn-update w-100">Update</button>
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
                     /*echo input_search();*/
                     echo ajax_search("ajax_search_mobile");
                     ?>
                  </div>
               </div>
               <div class="col-6">
                  <div class="my-3">
                     <?php
                     if(!empty($action) && $action == 'lease')
                        echo select_rent_price_min();
                     else
                        echo select_price_min();
                     ?>
                  </div>
               </div>
               <div class="col-6">
                  <div class="my-3">
                     <?php
                     if(!empty($action) && $action == 'lease')
                        echo select_rent_price_max();
                     else
                        echo select_price_max();
                     ?>
                  </div>
               </div>
               <div class="col-6">
                  <div class="my-3">
                     <?php echo select_min_beds(); ?>
                  </div>
               </div>
               <div class="col-6">
                  <div class="my-3">
                     <?php echo select_property_type(); ?>
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
   var selected = <?php echo (!empty($selected_keywords)) ? $selected_keywords:json_encode([]); ?>;
   var placeholder = "City, Building or Community";
   $(document).ready(function() {
      var $select2 = $('#ajax_search').select2({
         multiple: "multiple",
         placeholder: placeholder,
         //tags:true
         //allowClear: true,
      });

      //var preselectedOptions = ['property:Voluptatibus et veni', 'developer:Dream Homes Realty'];
      selected.forEach(function (optionValue) {
         $select2.find('option[value="' + optionValue + '"]').prop('selected', true);
      });

      // Trigger change to update Select2's internal state
      $select2.trigger('change');

      var $select2 = $('#ajax_search_mobile').select2({
         multiple: "multiple",
         placeholder: placeholder,
         //tags:true
         //allowClear: true,
      });

      //var preselectedOptions = ['property:Voluptatibus et veni', 'developer:Dream Homes Realty'];
      selected.forEach(function (optionValue) {
         $select2.find('option[value="' + optionValue + '"]').prop('selected', true);
      });

      // Trigger change to update Select2's internal state
      $select2.trigger('change');

   })
</script>

<style>
   .select2-selection{
      min-height: 46px !important;
      padding: 6px 0 0 10px;
      overflow: hidden;
      white-space: nowrap;
      border-radius: 0px !important;
   }
   /* Add this CSS to your stylesheet */
   .select2-container .select2-search--inline .select2-search__field {
      height: 24px; /* Adjust this value based on your design preferences */
        height: 24px; /* Adjust this value based on your design preferences */
    font-size: 14px !important;
    color: #707070 !important;
    font-family: 'Roboto' !important;
    font-weight: 400 !important;
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