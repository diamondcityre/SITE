<?php
define('MAX_PRICE_FILTER', 50000000);
define('MIN_PRICE_FILTER', 300000);

define('MAX_RENT_FILTER', 1000000);
define('MIN_RENT_FILTER', 20000 );

function load_property_type($off_plan=false)
{
   global $conn;
   $query = "SELECT id, `type` FROM `property_sub_types` WHERE 1 ";
   if(!empty($off_plan))
      $query .= " AND off_plan_enabled = 1";

   $result = mysqli_query($conn, $query);
   $res = array();
   while ($row = mysqli_fetch_array($result)) $res[] = $row;
   return $res;
}

function getDistinctYears()
{
   global $conn;
   $query = "SELECT YEAR(completion_dat) AS years 
      FROM
         off_plans 
      WHERE
         YEAR(completion_dat) >= YEAR(CURDATE()) 
      GROUP BY
         years 
      ORDER BY
         years ASC";
   $result = mysqli_query($conn, $query);
   $res = array();
   while ($row = mysqli_fetch_array($result)) $res[] = $row;
   return $res;
}


function getPropertySearchOptions()
{
   global $conn;

   $query = "SELECT
               properties.title,
               properties.id,
               communities.`name` AS community,
               buildings.`name` AS building,
               cities.`name` AS city 
            FROM
               properties
               LEFT JOIN communities ON communities.id = properties.community
               LEFT JOIN buildings ON buildings.id = properties.building
               LEFT JOIN cities ON cities.id = communities.city_id";

   $stmt1 = $conn->query($query);

   $resultArray = array(
      'property' => [],
      'communities' => [],
      'building' => [],
      'city' => [],
   );
   while ($row = $stmt1->fetch_assoc()) {
      //$resultArray['property'][] = $row['title'];

      //$resultArray['communities'][] = $row['community'];
      //$resultArray['building'][] = $row['building'];
      //$resultArray['city'][] = $row['city'];

      //new code
      $text = '';
      if(!empty($row['building']))
      {
         $text = $row['building'];
         $text .= (!empty($row['community'])) ? ' ('.$row['community'].')':'';
         $text = (!empty($row['city'])) ? rtrim($text,')').', '.$row['city'].')':$text;

         //$text .= (!empty($row['city'])) ? ' ('.$row['city'].')':'';
         $resultArray['building'][$row['building']] = $text;
      }

      $text = '';
      if(!empty($row['community']))
      {
         $text = $row['community'];
         $text .= (!empty($row['city'])) ? ' ('.$row['city'].')':'';
         $resultArray['communities'][$row['community']] = $text;
      }
   }

   // Remove duplicates and empty values
   $resultArray['property'] = array_values(array_unique(array_filter($resultArray['property'])));
   //$resultArray['communities'] = array_values(array_unique(array_filter($resultArray['communities'])));
   $resultArray['communities'] = array_filter($resultArray['communities']);
   $resultArray['building'] = array_filter($resultArray['building']);
   $resultArray['city'] = array_values(array_unique(array_filter($resultArray['city'])));

   return $resultArray;

   /*$query = "SELECT DISTINCT properties.title FROM properties";
   $stmt1 = $conn->query($query);
   $resultArray['property'] = [];
   while ($row = $stmt1->fetch_assoc()) {
      $resultArray['property'][] = $row['title'];
   }

   $query2 = "SELECT DISTINCT communities.name AS community_name
               FROM communities
               JOIN properties ON `communities`.id = `properties`.community";
   $stmt2 = $conn->query($query2);
   $resultArray['community'] = [];
   while ($row = $stmt2->fetch_assoc()) {
      $resultArray['community'][] = $row['community_name'];
   }

   $query3 = "SELECT DISTINCT cities.name AS city
               FROM cities
               JOIN properties ON communities.id = properties.community";
   $stmt3 = $conn->query($query3);
   $resultArray['communities'] = [];
   while ($row = $stmt2->fetch_assoc()) {
      $resultArray['communities'][] = $row['communities'];
   }*/

}

function getOffplanSearchOptions()
{
   global $conn;

   $query = "SELECT
               off_plans.title,
               off_plans.id,
               developers.`name` AS developer_name,
               locations.`name` AS location_name
            FROM
               off_plans
               LEFT JOIN developers ON developers.id = `off_plans`.developer
               LEFT JOIN locations ON locations.id = `off_plans`.location";

   $stmt1 = $conn->query($query);

   $resultArray = array(
      'off_plan' => [],
      'developer' => [],
      'location' => [],
   );
   while ($row = $stmt1->fetch_assoc()) {
      $resultArray['off_plan'][] = $row['title'];
      $resultArray['developer'][] = $row['developer_name'];
      $resultArray['location'][] = $row['location_name'];
   }

   // Remove duplicates and empty values
   $resultArray['off_plan'] = array_values(array_unique(array_filter($resultArray['off_plan'])));
   $resultArray['developer'] = array_values(array_unique(array_filter($resultArray['developer'])));
   $resultArray['location'] = array_values(array_unique(array_filter($resultArray['location'])));

   return $resultArray;
}

function ajax_search($id="ajax_search")
{
   $res = getPropertySearchOptions();
   $html = '<select id="'.$id.'" name="search_keyword[]" class="form-select ajax_search" style="width: 100%;" multiple="multiple">';
   //$html .= '<option>Select Option</option>';
   if(!empty($res['property']))
      foreach ($res['property'] as $row)
         $html .= '<option value="property:'.$row.'">'.$row.'</option>';

   /*if(!empty($res['communities']))
      foreach ($res['communities'] as $row)
         $html .= '<option value="communities:'.$row.'">'.$row.'</option>';

   if(!empty($res['building']))
      foreach ($res['building'] as $row)
         $html .= '<option value="building:'.$row.'">'.$row.'</option>';*/

   if(!empty($res['communities']))
      foreach ($res['communities'] as $key => $row)
         $html .= '<option value="communities:'.$key.'">'.$row.'</option>';

   if(!empty($res['building']))
      foreach ($res['building'] as $key => $row)
         $html .= '<option value="building:'.$key.'">'.$row.'</option>';

   if(!empty($res['city']))
      foreach ($res['city'] as $row)
         $html .= '<option value="city:'.$row.'">'.$row.'</option>';

   $html .= '</select>';
   return $html;
}

function ajax_search_off_plan($id="ajax_search")
{
   $res = getOffplanSearchOptions();
   $html = '<select id="'.$id.'" name="search_keyword" class="form-select ajax_search" style="width: 100%;" >';
   $html .= '<option value="" selected="selected">Location, developer or project</option>';
   if(!empty($res['off_plan']))
      foreach ($res['off_plan'] as $row)
         $html .= '<option value="off_plan:'.$row.'">'.$row.'</option>';

   if(!empty($res['developer']))
      foreach ($res['developer'] as $row)
         $html .= '<option value="developer:'.$row.'">'.$row.'</option>';

   if(!empty($res['location']))
      foreach ($res['location'] as $row)
         $html .= '<option value="location:'.$row.'">'.$row.'</option>';

   $html .= '</select>';
   return $html;
}

function input_search($place_holder="Location, Developer or Project")
{
   $value = (!empty($_REQUEST['search_keyword'])) ? $_REQUEST['search_keyword'] : "";
   $html = '<input type="text" class="form-control" name="search_keyword" placeholder="'.$place_holder.'" value="' . $value . '">';
   return $html;
}

function select_property_type()
{
   $types = load_property_type();
   $html = '<select name="property_type" class="form-select">               <option value="" selected="">Property Type</option>';
   foreach ($types as $type)
   {
      $selected = '';
      if (isset($_REQUEST['property_type']) && $_REQUEST['property_type'] == $type['type'])
      {
         $selected = 'selected';
      }
      $html .= '<option value="' . $type['type'] . '" ' . $selected . '>' . $type['type'] . '</option>';
   }
   $html .= '</select>';
   return $html;
}

function select_offplan_property_type($id="property_type_filter", $multiple=false)
{
   /*$name = (!empty($multiple)) ? "property_type[]":"property_type";
   $multiple_attr = (!empty($multiple)) ? 'multiple="multiple"':"";
   $html = '<select id="'.$id.'" name="'.$name.'" class="form-select" '.$multiple_attr.'>';*/

   //var_dump($_REQUEST['property_type']);
   $html = '<select name="property_type" class="form-select">               <option value="" selected="">Property Type</option>';
   $types = load_property_type(true);
   foreach ($types as $type)
   {
      $selected = '';
      if (isset($_REQUEST['property_type']) && $_REQUEST['property_type'] == $type['id'])
      {
         $selected = 'selected';
      }
      $html .= '<option value="' . $type['id'] . '" ' . $selected . '>' . $type['type'] . '</option>';
   }
   $html .= '</select>';
   return $html;
}

function select_price_min()
{
   $html = '<select name="price_min" class="form-select" aria-label="Default select example"><option value="0" selected>Min Price</option>';

   $selected = (!empty($_REQUEST['price_min'])) ? $_REQUEST['price_min']:'';
   // Series one
   $series1 = range(300000, 3000000, 100000);
   $html .= generate_series_options($series1, $selected);

   // Series two
   $series2 = [3250000, 3500000, 4500000];
   $series2 = range(3250000, 4500000, 250000);
   $html .= generate_series_options($series2, $selected);

   // Series three
   $series3 = range(5000000, 10000000, 1000000);
   $html .= generate_series_options($series3, $selected);

   // Series four
   $series4 = [25000000, 50000000];
   $html .= generate_series_options($series4, $selected);

   $html .= '</select>';

   return $html;
}

function select_price_max()
{
   $html = '<select name="price_max" class="form-select" ><option value="0" selected>Max Price</option>';

   $selected = (!empty($_REQUEST['price_max'])) ? $_REQUEST['price_max']:'';
   // Series one
   $series1 = range(300000, 3000000, 100000);
   $html .= generate_series_options($series1, $selected);

   // Series two
   $series2 = [3250000, 3500000, 4500000];
   $series2 = range(3250000, 4500000, 250000);
   $html .= generate_series_options($series2, $selected);

   // Series three
   $series3 = range(5000000, 10000000, 1000000);
   $html .= generate_series_options($series3, $selected);

   // Series four
   $series4 = [25000000, 50000000];
   $html .= generate_series_options($series4, $selected);

   $html .= '</select>';

   return $html;
}

function generate_series_options($series, $select_option='')
{
   $options = '';
   foreach ($series as $value)
   {
      $selected = '';
      if (isset($select_option) && $select_option == $value)
      {
         $selected = 'selected';
      }
      $label = number_format($value);
      $options .= '<option value="' . $value . '" ' . $selected . '>' . $label . ' AED</option>';
   }

   return $options;
}


function select_price_min1()
{
   $html = '<select name="price_min" class="form-select" aria-label="Default select example">               <option value="0" selected>Min Price</option>';

   for ($value = MIN_PRICE_FILTER; $value <= MAX_PRICE_FILTER; $value += 100000)
   {
      $selected = '';
      if (isset($_REQUEST['price_min']) && $_REQUEST['price_min'] == $value)
      {
         $selected = 'selected';
      }
      $label = number_format($value) . ' AED';
      $html .= '<option value="' . $value . '" ' . $selected . '>' . $label . '</option>';
   }


   $html .= '</select>';
   return $html;
}

function select_price_max1()
{
   $html = '<select name="price_max" class="form-select">               <option value="0" selected>Max Price</option>';
   for ($value = MIN_PRICE_FILTER; $value <= MAX_PRICE_FILTER; $value += 100000)
   {
      $selected = '';
      if (isset($_REQUEST['price_max']) && $_REQUEST['price_max'] == $value)
      {
         $selected = 'selected';
      }
      $label = number_format($value) . ' AED';
      $html .= '<option value="' . $value . '" ' . $selected . '>' . $label . '</option>';
   }
   $html .= '</select>';
   return $html;
}

function select_rent_price_min()
{
   $html = '<select name="price_min" class="form-select">               <option value="0" selected>Min Price</option>';
   // First range
   for ($value = 20000; $value <= 200000; $value += 10000)
   {
      $selected = '';
      if (isset($_REQUEST['price_min']) && $_REQUEST['price_min'] == $value)
      {
         $selected = 'selected';
      }
      $label = number_format($value) . ' AED/Year';
      $html .= '<option value="' . $value . '" ' . $selected . '>' . $label . '</option>';
   }

   $secondRangeValues = [225000, 275000, 300000, 350000, 400000, 500000, 750000, 1000000];
   foreach ($secondRangeValues as $value)
   {
      $selected = '';
      if (isset($_REQUEST['price_min']) && $_REQUEST['price_min'] == $value)
      {
         $selected = 'selected';
      }
      $label = number_format($value) . ' AED/Year';
      $html .= '<option value="' . $value . '" ' . $selected . '>' . $label . '</option>';
   }

   $html .= '</select>';

   return $html;
}

function select_rent_price_max()
{
   $html = '<select name="price_max" class="form-select">               <option value="0" selected>Max Price</option>';
   // First range
   for ($value = 20000; $value <= 200000; $value += 10000)
   {
      $selected = '';
      if (isset($_REQUEST['price_max']) && $_REQUEST['price_max'] == $value)
      {
         $selected = 'selected';
      }
      $label = number_format($value) . ' AED/Year';
      $html .= '<option value="' . $value . '" ' . $selected . '>' . $label . '</option>';
   }

   // Second range
   $secondRangeValues = [225000, 275000, 300000, 350000, 400000, 500000, 750000, 1000000];
   foreach ($secondRangeValues as $value)
   {
      $selected = '';
      if (isset($_REQUEST['price_max']) && $_REQUEST['price_max'] == $value)
      {
         $selected = 'selected';
      }
      $label = number_format($value) . ' AED/Year';
      $html .= '<option value="' . $value . '" ' . $selected . '>' . $label . '</option>';
   }

   $html .= '</select>';

   return $html;
}

function select_min_beds($id="beds_filter", $multiple=false)
{
   $name = (!empty($multiple)) ? "min_beds[]":"min_beds";
   $multiple_attr = (!empty($multiple)) ? 'multiple="multiple"':"";
   $html = '<select id="'.$id.'" name="'.$name.'" class="form-select" aria-label="Default select example" '.$multiple_attr.'>';
   if(empty($multiple))
      $html .=  '<option value="" selected="true">Min Beds</option>';
   //$beds_options = ['-1' => 'Studio', '1' => '1', '2' => '2', '3' => '3', '4' => '4', '5' => '5',];
   $beds_options = ['-1' => 'Studio'] + array_combine(range(1, 10), range(1, 10));
   foreach ($beds_options as $k => $v)
   {
      $selected = '';
      if (!empty($_REQUEST['min_beds']) && $_REQUEST['min_beds'] == $k)
      {
         $selected = 'selected';
      }
      $html .= "<option value='" . $k . "' " . $selected . ">" . $v . "</option>";
   }
   $html .= '</select>';
   return $html;
}

function select_off_plan_min_beds($id="beds_filter")
{
   $html = '<select name="min_beds" class="form-select" >';
   if(empty($multiple))
      $html .=  '<option value="" selected="true">Beds</option>';
   $beds_options = ['-1' => 'Studio'] + array_combine(range(1, 5), range(1, 5));
   foreach ($beds_options as $k => $v)
   {
      $selected = '';
      if (!empty($_REQUEST['min_beds']) && $_REQUEST['min_beds'] == $k)
      {
         $selected = 'selected';
      }
      $option_text = ($k == -1) ? $v:$v.'+';
      $html .= "<option value='" . $k . "' " . $selected . ">" . $option_text . "</option>";
   }
   $html .= '</select>';
   return $html;
}

function select_ready_years()
{
   $html = '<select name="ready_years" class="form-select" aria-label="Default select example">
            <option value="" selected="true">Completion</option>';
   $date_arr = getDistinctYears();
   if(!empty($date_arr))
   {
      $currentYear = date('Y');
      foreach ($date_arr as $row)
      {
         $year = $row['years'];
         $selected = '';
         if (!empty($_REQUEST['ready_years']) && $_REQUEST['ready_years'] == $year)
            $selected = 'selected';

         $text = ($year === $currentYear) ? 'Ready Now' : 'Ready ' . $year;
         $html .= "<option value='" . $year . "' $selected>" . $text . "</option>";
      }
   }
   $html .= '</select>';
   return $html;
}

function formatNumber($number)
{
   if (empty($number))
   {
      return 0;
   }
   $formattedNumber = ($number == intval($number)) ? intval($number) : $number;
   return $formattedNumber;
}

function get_email_config()
{
   //$arr['_Host'] = 'email26.secureserver.net';// 'https://email26.secureserver.net/'; //mail.diamondcityre.com
   $arr['_Host'] = 'smtp.office365.com';
   $arr['_Username'] = 'marketing@diamondcityre.com';                 // SMTP username
   $arr['_Password'] = 'Zasu#5252#';
   $arr['_port'] = 587;//465;
   $arr['SMTPSecure'] = 'tls'; //ssl
   $arr['from_name'] = 'DCRE Enquiry';
   $arr['from_email'] = 'marketing@diamondcityre.com';
   
   
    

   return $arr;
}

?>