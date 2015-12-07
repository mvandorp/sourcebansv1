<?php
/**
 * =============================================================================
 * Admin search box
 * 
 * @author SteamFriends Development Team
 * @version 1.0.0
 * @copyright SourceBans (C)2007 SteamFriends.com.  All rights reserved.
 * @package SourceBans
 * @link http://www.sourcebans.net
 * 
 * @version $Id: admin.admins.search.php 24 2007-11-06 18:17:05Z olly $
 * =============================================================================
 */

global $theme;

$server_list = $GLOBALS['db']->Execute("SELECT sid, ip, port FROM `" . DB_PREFIX . "_servers` WHERE enabled = 1");
$servers = array();
$serverscript = "<script type=\"text/javascript\">";
while (!$server_list->EOF)
{
	$info = array();
    $serverscript .= "xajax_ServerHostPlayers('".$server_list->fields[0]."', 'id', 'ss".$server_list->fields[0]."', '', '', false, 200);";
	$info['sid'] = $server_list->fields[0];
	$info['ip'] = $server_list->fields[1];
	$info['port'] = $server_list->fields[2];
	array_push($servers,$info);
	$server_list->MoveNext();
}
$serverscript .= "</script>";

$theme->assign('server_list', $servers);
$theme->assign('server_script', $serverscript);
$theme->display('box_admin_logs_search.tpl');
?>