<?php  
/**
 * =============================================================================
 * Mods page
 * 
 * @author SteamFriends Development Team
 * @version 1.0.0
 * @copyright SourceBans (C)2007 SteamFriends.com.  All rights reserved.
 * @package SourceBans
 * @link http://www.sourcebans.net
 * 
 * @version $Id: admin.mods.php 165 2008-09-27 14:36:57Z peace-maker $
 * =============================================================================
 */

if(!defined("IN_SB")){echo "You should not be here. Only follow links!";die();} 
global $userbank,$theme;
?>

<div id="admin-page-content">
	<!-- List Logs -->
	<div id="0" style="display:none;">
		<?php 
		$theme->assign('log_count', $log_count);
		$theme->assign('log_list', $log_list);
		$theme->assign('permission_listlogs', $userbank->HasAccess(ADMIN_OWNER|ADMIN_ADD_BAN|ADMIN_EDIT_OWN_BANS|ADMIN_EDIT_GROUP_BANS|ADMIN_EDIT_ALL_BANS|ADMIN_BAN_PROTESTS|ADMIN_BAN_SUBMISSIONS));
		$theme->assign('permission_viewlogs', $userbank->HasAccess(ADMIN_OWNER|ADMIN_ADD_BAN|ADMIN_EDIT_OWN_BANS|ADMIN_EDIT_GROUP_BANS|ADMIN_EDIT_ALL_BANS|ADMIN_BAN_PROTESTS|ADMIN_BAN_SUBMISSIONS));
		$theme->assign('permission_deletelogs', $userbank->HasAccess(ADMIN_OWNER|ADMIN_EDIT_GROUP_BANS|ADMIN_EDIT_ALL_BANS));
		$theme->display('page_admin_logs_list.tpl');
		?>
	</div>
</div>
