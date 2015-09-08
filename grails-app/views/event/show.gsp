
<%@ page import="eventnotifier.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
	</head>
	<body>
		<div id="show-event" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list event">
			
				<g:if test="${eventInstance?.club}">
				<li class="fieldcontain">
					<span id="club-label" class="property-label"><g:message code="event.club.label" default="Club" /></span>
					
						<span class="property-value" aria-labelledby="club-label"><g:link controller="club" action="show" id="${eventInstance?.club?.id}">${eventInstance?.club?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>


				<g:if test="${eventInstance?.name}">
					<li class="fieldcontain">
						<span id="name-label" class="property-label"><g:message code="event.name.label" default="Name" /></span>

						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${eventInstance}" field="name"/></span>

					</li>
				</g:if>
			
				<g:if test="${eventInstance?.details}">
				<li class="fieldcontain">
					<span id="details-label" class="property-label"><g:message code="event.details.label" default="Details" /></span>
					
						<span class="property-value" aria-labelledby="details-label"><g:fieldValue bean="${eventInstance}" field="details"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.eventDate}">
				<li class="fieldcontain">
					<span id="eventDate-label" class="property-label"><g:message code="event.eventDate.label" default="Event Date" /></span>
					
						<span class="property-value" aria-labelledby="eventDate-label"><g:formatDate date="${eventInstance?.eventDate}" /></span>
					
				</li>
				</g:if>

			
				<g:if test="${eventInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="event.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${eventInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.venue}">
				<li class="fieldcontain">
					<span id="venue-label" class="property-label"><g:message code="event.venue.label" default="Venue" /></span>
					
						<span class="property-value" aria-labelledby="venue-label"><g:fieldValue bean="${eventInstance}" field="venue"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
