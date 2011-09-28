<% require css(sapphire/thirdparty/jquery-ui-themes/smoothness/jquery-ui.css) %>
<% require css(sapphire/css/DataGrid.css) %>

<div class="ss-datagrid ui-state-default">
	<table>
		<thead>
			<tr>
				<% control Headings %>
				<th class="<% if FirstLast %>ss-datagrid-{$FirstLast} <% if IsSortable %>ss-datagrid-sortable<% end_if %> <% if IsSorted %>ss-datagrid-sorted ss-datagrid-{$SortedDirection}">
					$Title <span class="ui-icon"></span></th>
				<% end_control %>
			</tr>
		</thead>
		
		<tbody>
			<% control Items %>
				<% include DataGrid_Item %>
			<% end_control %>
		</tbody>
		
		<tfoot>

		</tfoot>
	</table>
</div>