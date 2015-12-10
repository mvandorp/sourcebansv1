{if NOT $permission_listplayers}
	Access Denied!
{else}
	{php} require (TEMPLATES_PATH . "/admin.players.search.php");{/php}
	
	<h3>Players ({$player_count})</h3>
	<table width="100%" cellpadding="1">
		<tr>
			<td width="25%" height='16' class="front-module-header"><strong>SteamID</strong></td>
			<td width="65%" height='16' class="front-module-header"><strong>Name</strong></td>
			{if $permission_viewplayers}
			<td height='16' class="front-module-header"><strong>Action</strong></td>
			{/if}
		</tr>
		{foreach from="$player_list" item="player" name="default"}
			<tr>
				<td style="border-bottom: solid 1px #ccc" height='16'>{$player.steamid}</td>
				<td style="border-bottom: solid 1px #ccc" height='16'>{$player.name|escape:'html':'UTF-8'}</td>
				{if $permission_viewplayers}
				<td style="border-bottom: solid 1px #ccc" height='16'>
					<a href="index.php?p=admin&c=players&o=view&id={$player.id}">View</a>
				</td>
				{/if}
			</tr>
		{/foreach}
	</table>
{/if}
