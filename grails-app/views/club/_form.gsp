<%@ page import="eventnotifier.Club" %>



<div class="fieldcontain ${hasErrors(bean: clubInstance, field: 'clubName', 'error')} required">
	<label for="clubName">
		<g:message code="club.clubName.label" default="Club Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clubName" required="" value="${clubInstance?.clubName}"/>

</div>

