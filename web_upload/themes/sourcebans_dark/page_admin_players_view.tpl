{if NOT $permission_viewplayers}
	Access Denied!
{else}
	<h3>Info for {$player.steamid}</h3>
	<table width="100%" cellpadding="1">
		<tr>
			<td height='16' class="front-module-header"><strong>Name</strong></td>
			<td height='16' class="front-module-header">Last seen</td>
		</tr>
		{foreach from="$player_names" item="player_name"}
			<tr>
				<td width="75%" height='16'>{$player_name.name|escape:'html':'UTF-8'}</td>
				<td height='16'>{$player_name.last_seen}</td>
			</tr>
		{/foreach}
	</table>
	<table width="100%" cellpadding="1">
		<tr>
			<td width="75%" height='16' class="front-module-header"><strong>IP</strong></td>
			<td height='16' class="front-module-header">Last seen</td>
		</tr>
		{foreach from="$player_ips" item="player_ip"}
			<tr>
				<td height='16'>{$player_ip.ip}</td>
				<td height='16'>{$player_ip.last_seen}</td>
			</tr>
		{/foreach}
	</table>
	{if count($player_alts) > 0}
	<h3>Possible alts:</h3>
	<table width="100%" cellpadding="1">
		<tr>
			<td width="15%" height='16' class="front-module-header"><strong>IP</strong></td>
			<td width="25%" height='16' class="front-module-header"><strong>SteamID</strong></td>
			<td width="60%" height='16' class="front-module-header"><strong>Names</strong></td>
		</tr>
		{foreach from="$player_alts" item="player_alt"}
			<tr>
				<td height='16'><a href="index.php?p=admin&c=players&advSearch={$player_alt.ip}&advType=ip">{$player_alt.ip}</a></td>
				<td height='16'><a href="index.php?p=admin&c=players&o=view&id={$player_alt.id}">{$player_alt.steamid}</a></td>
				<td height='16'>{$player_alt.names}</td>
			</tr>
		{/foreach}
	</table>
	{/if}
{/if}
