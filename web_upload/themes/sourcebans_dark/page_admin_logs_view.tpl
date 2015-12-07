{if NOT $permission_viewlogs}
	Access Denied!
{else}
	<h3>{$log_id} | {$log_name|escape:'html':'UTF-8'}</h3>
	<table class="log" width="100%" cellpadding="1">
		{foreach from="$log_events" item="event"}
			<tr>
				{if ($event.flags & (1 << 0)) == 0}
					{if $event.playerid == 0}
						<td height='16'><span class="logtime">[{$event.time}] </span><span class="logtextsrv">{$event.text|escape:'html':'UTF-8'}</span></td>
					{else}
						<td height='16'><span class="logtime">[{$event.time}] </span><a class="logtextsrv" href="index.php?p=admin&c=players&o=view&id={$event.playerid}">{$event.text|escape:'html':'UTF-8'}</a></td>
					{/if}
				{else}
					{if ($event.flags & 0x0C) == (1 << 2)}
						{assign var="teamName" value="(Spectator) "}
						{assign var="nameClass" value="lognamespec"}
					{elseif ($event.flags & 0x0C) == (2 << 2)}
						{assign var="teamName" value="(Survivor) "}
						{assign var="nameClass" value="lognamesurv"}
					{else}
						{assign var="teamName" value="(Infected) "}
						{assign var="nameClass" value="lognameinf"}
					{/if}

					{if ($event.flags & (1 << 1)) == 0}
						{if ($event.flags & 0x0C) == (1 << 2)}
							{assign var="teamText" value="*SPEC* "}
						{else}
							{assign var="teamText" value=""}
						{/if}
					{else}
						{assign var="teamText" value=$teamName}
					{/if}

					<td height='16'><span class="logtime">[{$event.time}] </span><span class="logteam">{$teamText}</span><a href="index.php?p=admin&c=players&o=view&id={$event.playerid}" class="{$nameClass}">{$event.name|escape:'html':'UTF-8'}</a><span class="logtext">: {$event.text|escape:'html':'UTF-8'}</span></td>
				{/if}
			</tr>
		{/foreach}
	</table>
{/if}
