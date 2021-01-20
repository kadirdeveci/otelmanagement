<?php
/**
*
*
* abdulkadir deveci
*
*
*/

// *** Make sure the file isn't accessed directly
defined('APPHP_EXEC') or die('Restricted Access');
//--------------------------------------------------------------------------

// draw title bar
draw_title_bar(_CUSTOMERS);

draw_content_start();
draw_important_message(_PAGE_NOT_EXISTS);
draw_content_end();
