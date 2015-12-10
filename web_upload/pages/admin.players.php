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
	<!-- List Players -->
	<div id="0" style="display:none;">
		<?php 
		$theme->assign('player_count', $player_count);
		$theme->assign('player_list', $player_list);
		$theme->assign('permission_listplayers', $userbank->HasAccess(ADMIN_OWNER|ADMIN_ADD_BAN|ADMIN_EDIT_OWN_BANS|ADMIN_EDIT_GROUP_BANS|ADMIN_EDIT_ALL_BANS|ADMIN_BAN_PROTESTS|ADMIN_BAN_SUBMISSIONS));
		$theme->assign('permission_viewplayers', $userbank->HasAccess(ADMIN_OWNER|ADMIN_ADD_BAN|ADMIN_EDIT_OWN_BANS|ADMIN_EDIT_GROUP_BANS|ADMIN_EDIT_ALL_BANS|ADMIN_BAN_PROTESTS|ADMIN_BAN_SUBMISSIONS));
		$theme->display('page_admin_players_list.tpl');
		?>
	</div>
</div>
