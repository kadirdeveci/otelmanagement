<?php
/**

*/

$current_file = basename($_SERVER['SCRIPT_FILENAME']);
$license_dir = '';
if($current_file == 'step1.php' || $current_file == 'step2.php'){
    $license_dir = '../';
}

?>

<table cellspacing="0" cellpadding="0" width="250px" border="0">
<tbody>
<tr><td height="20px"></td></tr>
<tr>
    <td class="footer_line">
        &laquo;<span style="color:#bb5500">uHotel</span>Booking&raquo; <?php echo EI_APPLICATION_VERSION;?> &nbsp;<a href='http://www.apphp.com'>ApPHP</a>
        <?php if(EI_LICENSE_AGREEMENT_PAGE != ''){ ?>
             : <a href="<?php echo $license_dir.EI_LICENSE_AGREEMENT_PAGE;?>" target="_blank" rel="noopener noreferrer">License</a>
        <?php } ?>
    </td>
</tr>
<tr><td height="7px"></td></tr>
</tbody>
</table>
