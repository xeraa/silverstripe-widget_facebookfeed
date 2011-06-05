<% if Limit == 0 %>
<% else %>
	<% if Feeds %>
		<div id="facebookfeed">
			<h2><% if Limit == 1 %><% _t('UPDATE','Facebook Update') %><% else %><% _t('UPDATES','Facebook Updates') %><% end_if %></h2>
			<% control Feeds %>
				<p>
					$Message.Parse(Nl2BrParser)<br/>
					<small>$Posted.Nice</small>
				</p>
				<% if Last %><% else %><hr/><% end_if %>
			<% end_control %>
		</div>
	<% end_if %>
<% end_if %>