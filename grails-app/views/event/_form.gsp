<%@ page import="eventnotifier.Event" %>


<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="event.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${eventInstance?.name}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="event.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${eventInstance?.type}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'club', 'error')} required">
	<label for="club">
		<g:message code="event.club.label" default="Club" />
		<span class="required-indicator">*</span>
	</label>
    <g:hiddenField name="club.id" value="${session.clubId}"/>
	%{--<g:select id="club" name="club.id" from="${eventnotifier.Club.list()}" optionKey="id" required="" value="${session.user.club.id}" class="many-to-one"/>--}%
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'details', 'error')} required">
	<label for="details">
		<g:message code="event.details.label" default="Details" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="details" required="" value="${eventInstance?.details}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventDate', 'error')} required">
	<label for="eventDate">
		<g:message code="event.eventDate.label" default="Event Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="eventDate" precision="day"  value="${eventInstance?.eventDate}"  />

</div>



<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'venue', 'error')} required">
	<label for="venue">
		<g:message code="event.venue.label" default="Venue" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="venue" required="" value="${eventInstance?.venue}"/>

</div>

