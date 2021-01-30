<?php
/**
*  
* abdulkadir deveci

*  

*  
*   
*/

// *** Make sure the file isn't accessed directly
defined('APPHP_EXEC') or die('Restricted Access');
//--------------------------------------------------------------------------

if($objLogin->IsLoggedInAsAdmin() && Modules::IsModuleInstalled('Blog')){	

	$action = MicroGrid::GetParameter('action');
	$rid    = MicroGrid::GetParameter('rid');
	$album  = MicroGrid::GetParameter('album', false);
	$mode   = 'view';
	$msg    = '';
	
	$objAlbums = new BlogAlbums();
	$album_info = $objAlbums->GetAlbumInfo($album);
	
	if(count($album_info) > 0){
		
		$objAlbumItems = new BlogAlbumItems();
		
		if($action=='add'){		
			$mode = 'add';
		}else if($action=='create'){
			if($objAlbumItems->AddRecord()){		
				$msg = draw_success_message(_ADDING_OPERATION_COMPLETED, false);
				$mode = 'view';
			}else{
				$msg = draw_important_message($objAlbumItems->error, false);
				$mode = 'add';
			}
		}else if($action=='edit'){
			$mode = 'edit';
		}else if($action=='update'){
			if($objAlbumItems->UpdateRecord($rid)){
				$msg = draw_success_message(_UPDATING_OPERATION_COMPLETED, false);
				$mode = 'view';
			}else{
				$msg = draw_important_message($objAlbumItems->error, false);
				$mode = 'edit';
			}		
		}else if($action=='delete'){
			if($objAlbumItems->DeleteRecord($rid)){
				$msg = draw_success_message(_DELETING_OPERATION_COMPLETED, false);
			}else{
				$msg = draw_important_message($objAlbumItems->error, false);
			}
			$mode = 'view';
		}else if($action=='details'){		
			$mode = 'details';		
		}else if($action=='cancel_add'){		
			$mode = 'view';		
		}else if($action=='cancel_edit'){				
			$mode = 'view';
		}

		// Start main content
		draw_title_bar(
			prepare_breadcrumbs(array(_MODULES=>'',_Blog=>'',_Blog_MANAGEMENT=>'',_ALBUM=>'',$album_info[0]['name']=>'',ucfirst($action)=>'')),
			prepare_permanent_link('index.php?admin=mod_Blog_management', _BUTTON_BACK)
		);
	
		//if($objSession->IsMessage('notice')) echo $objSession->GetMessage('notice');
		echo $msg;
	
		draw_content_start();
		if($mode == 'view'){		
			$objAlbumItems->DrawViewMode();	
		}else if($mode == 'add'){		
			$objAlbumItems->DrawAddMode();		
		}else if($mode == 'edit'){		
			$objAlbumItems->DrawEditMode($rid);		
		}else if($mode == 'details'){		
			$objAlbumItems->DrawDetailsMode($rid);		
		}
		draw_content_end();		
	}else{
		draw_title_bar(
			prepare_breadcrumbs(array(_MODULES=>'',_Blog_MANAGEMENT=>'',_ALBUM=>'')),
			prepare_permanent_link('index.php?admin=mod_Blog_management', _BUTTON_BACK)
		);
		draw_important_message(_WRONG_PARAMETER_PASSED);
	}
}else{
	draw_title_bar(_ADMIN);
	draw_important_message(_NOT_AUTHORIZED);
}

