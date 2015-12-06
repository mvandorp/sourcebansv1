{if NOT $permission_listlogs}
	Access Denied!
{else}
	<h3>Server Logs ({$log_count})</h3>
	<table width="100%" cellpadding="1">
		<tr>
			<td width="10%" height='16' class="front-module-header"><strong>ID</strong></td>
			<td width="25%" height='16' class="front-module-header"><strong>Date</strong></td>
			<td width="50%" height='16' class="front-module-header"><strong>Server</strong></td>
			{if $permission_deletelogs}
			<td height='16' class="front-module-header"><strong>Action</strong></td>
			{/if}
		</tr>
		{foreach from="$log_list" item="log" name="default"}
			<tr id="lid_{$log.id}">
				<td style="border-bottom: solid 1px #ccc" height='16'>{$log.id}</td>
				<td style="border-bottom: solid 1px #ccc" height='16'>{$log.started_at}</td>
				<td style="border-bottom: solid 1px #ccc" height='16'>{$log.server}</td>
				{if $permission_viewlogs || $permission_deletelogs}
				<td style="border-bottom: solid 1px #ccc" height='16'>
					{if $permission_viewlogs}
						<a href="index.php?p=admin&c=logs&o=view&id={$log.id}">View</a>
					{/if}
					{if $permission_deletelogs}
						<a href="#" onclick="RemoveGameLog('{$log.id}');">Delete</a>
					{/if}
				</td>
				{/if}
			</tr>
		{/foreach}
	</table>
{/if}
