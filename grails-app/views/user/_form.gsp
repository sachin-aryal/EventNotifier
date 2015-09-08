<%@ page import="eventnotifier.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'club', 'error')} required">
	<label for="club">
		<g:message code="user.club.label" default="Club" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="club" name="club.id" from="${eventnotifier.Club.list()}" optionKey="id" required="" value="${userInstance?.club?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="user.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="role" required="" value="${userInstance?.role}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="user.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${userInstance?.userName}"/>

</div>

