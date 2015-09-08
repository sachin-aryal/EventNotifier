
<%@ page import="eventnotifier.Club" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'club.label', default: 'Club')}" />
	</head>
	<body>
		<div id="list-club" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="clubName" title="${message(code: 'club.clubName.label', default: 'Club Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clubInstanceList}" status="i" var="clubInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<g:if test="${session.user}">
						<td><g:link action="show" id="${clubInstance.id}">${fieldValue(bean: clubInstance, field: "clubName")}</g:link></td>
					</g:if>
						<g:else>
							<td>${clubInstance.clubName}</td>
						</g:else>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clubInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
