
<%@ page import="eventnotifier.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="user.club.label" default="Club" /></th>
					
						<g:sortableColumn property="password" title="${message(code: 'user.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="role" title="${message(code: 'user.role.label', default: 'Role')}" />
					
						<g:sortableColumn property="userName" title="${message(code: 'user.userName.label', default: 'User Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "club")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "role")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "userName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
