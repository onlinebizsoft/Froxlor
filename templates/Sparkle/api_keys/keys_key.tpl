<tr <if $isMyKey>class="primary-entry"</if>>
	<td>
		{$adminCustomerLink}
	</td>
	<td>
		<span id="apikey-{$row['id']}" data-id="{$row['id']}" title="{$lng['apikeys']['clicktoview']}">{$row['_apikey']}</span>
	</td>
	<td>
		<span id="secret-{$row['id']}" data-id="{$row['id']}" title="{$lng['apikeys']['clicktoview']}">{$row['_secret']}</span>
	</td>
	<td>
		{$row['allowed_from']}
	</td>
	<td>
		<if !$isValid><strong><span class="red"></if>
		{$row['valid_until']}
		<if !$isValid></span></strong></if>
	</td>
	<td>
		<a href="{$linker->getLink(array('section' => 'index', 'page' => $page, 'action' => 'edit', 'id' => $row['id']))}">
			<img src="templates/{$theme}/assets/img/icons/edit.png" alt="{$lng['panel']['edit']}" title="{$lng['panel']['edit']}" />
		</a>&nbsp;
		<a href="{$linker->getLink(array('section' => 'index', 'page' => $page, 'action' => 'delete', 'id' => $row['id']))}">
			<img src="templates/{$theme}/assets/img/icons/delete.png" alt="{$lng['panel']['delete']}" title="{$lng['panel']['delete']}" />
		</a>
		<div id="dialog-{$row['id']}" title="API-key / Secret" class="hidden api-dialog">
			<form action="{$linker->getLink(array('section' => 'apikeys'))}" method="post" enctype="application/x-www-form-urlencoded">
			<input type="hidden" name="id" value="{$row['id']}"/>
			<table class="full hl">
				<tr>
					<th>API-key</th><td><input type="text" value="{$row['apikey']}" readonly/></td>
				</tr>
				<tr>
					<th>Secret</th><td><input type="text" value="{$row['secret']}" readonly/></td>
				</tr>
				<tr>
					<th>{$lng['apikeys']['allowed_from']}<br><small>{$lng['apikeys']['allowed_from_help']}</small></th><td><input type="text" name="allowed_from" value="{$row['allowed_from']}"/></td>
				</tr>
				<tr>
					<th>{$lng['apikeys']['valid_until']}<br><small>{$lng['apikeys']['valid_until_help']}</small></th><td><input type="text" name="valid_until" value="{$row['valid_until']}"/></td>
				</tr>
			</table>
			</form>
		</div>
	</td>
</tr>