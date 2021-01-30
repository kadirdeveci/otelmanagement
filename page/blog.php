<?php

/**
 *
 */
class Blogs
{

  function __construct(argument)
  {
    initBlogs();
  }

  function initBlogs(){
    $blogs = [];
    return $blogs;
  }

}


// *** Make sure the file isn't accessed directly
defined('APPHP_EXEC') or die('Restricted Access');
//--------------------------------------------------------------------------

if(Modules::IsModuleInstalled('blog')){
	$objGalleryAlbum = new Blogs();
}else{
	draw_important_message(_PAGE_UNKNOWN);
}
