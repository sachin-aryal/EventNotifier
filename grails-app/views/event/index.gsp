
<%@ page import="eventnotifier.Event" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>

<div id="list-event" class="content scaffold-list" role="main">
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<table>
		<thead>
		<tr>

			<g:sortableColumn property="name" title="${message(code: 'event.name.label', default: 'Name')}" />

			<g:sortableColumn property="details" title="${message(code: 'event.details.label', default: 'Details')}" />

			<g:sortableColumn property="eventDate" title="${message(code: 'event.eventDate.label', default: 'Event Date')}" />


			<g:sortableColumn property="type" title="${message(code: 'event.type.label', default: 'Type')}" />

			<g:sortableColumn property="venue" title="${message(code: 'event.venue.label', default: 'Venue')}" />

		</tr>
		</thead>
		<tbody>
		<g:each in="${eventInstanceList}" status="i" var="eventInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				<g:if test="${session.user}">
					<td><g:link action="show" id="${eventInstance.id}">${fieldValue(bean: eventInstance, field: "name")}</g:link></td>
				</g:if>
				<g:else>
					<td>${eventInstance.name}</td>
				</g:else>
				<td>${fieldValue(bean: eventInstance, field: "details")}</td>

				<td><g:formatDate date="${eventInstance.eventDate}" /></td>


				<td>${fieldValue(bean: eventInstance, field: "type")}</td>

				<td>${fieldValue(bean: eventInstance, field: "venue")}</td>

			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<g:paginate total="${eventInstanceCount ?: 0}" />
	</div>
</div>
</body>
</html>
