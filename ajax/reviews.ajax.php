<?php
/**
*
*
*
* abdulkadir deveci
*
*/

define('APPHP_EXEC', 'access allowed');
define('APPHP_CONNECT', 'direct');
require_once('../include/base.inc.php');
require_once('../include/connection.php');

$act                  = isset($_POST['act']) ? $_POST['act'] : '';
$hotel_id             = isset($_POST['hotel_id']) ? (int)$_POST['hotel_id'] : '';
$customer_id          = isset($_POST['customer_id']) ? (int)$_POST['customer_id'] : '';
$rating_cleanliness   = isset($_POST['rating_cleanliness']) && is_numeric($_POST['rating_cleanliness']) ? prepare_input($_POST['rating_cleanliness'], true) : 0;
$rating_room_comfort  = isset($_POST['rating_room_comfort']) && is_numeric($_POST['rating_room_comfort']) ? prepare_input($_POST['rating_room_comfort'], true) : 0;
$rating_location      = isset($_POST['rating_location']) && is_numeric($_POST['rating_location']) ? prepare_input($_POST['rating_location'], true) : 0;
$rating_service       = isset($_POST['rating_service']) && is_numeric($_POST['rating_service']) ? prepare_input($_POST['rating_service'], true) : 0;
$rating_sleep_quality = isset($_POST['rating_sleep_quality']) && is_numeric($_POST['rating_sleep_quality']) ? prepare_input($_POST['rating_sleep_quality'], true) : 0;
$rating_price         = isset($_POST['rating_price']) && is_numeric($_POST['rating_price']) ? prepare_input($_POST['rating_price'], true) : 0;
$evaluation           = isset($_POST['evaluation']) ? (int)$_POST['evaluation'] : 0;
$title		          = isset($_POST['title']) ? prepare_input($_POST['title'], true) : '';
$positive_comments    = isset($_POST['title']) ? prepare_input($_POST['positive_comments'], true) : '';
$negative_comments	  = isset($_POST['title']) ? prepare_input($_POST['negative_comments'], true) : '';
$token                = isset($_POST['token']) ? prepare_input($_POST['token'], true) : '';
$session_token        = isset($_SESSION[INSTALLATION_KEY]['token']) ? prepare_input($_SESSION[INSTALLATION_KEY]['token']) : '';
$arr                  = array();

echo '[';
echo implode(',', $arr);
echo ']';

return;
