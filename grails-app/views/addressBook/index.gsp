<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Render Domain</title>
	</head>
	<body>
		<h2>My Address Book</h2>
		<g:if test="${session?.user}">
			<div id="login">
			        ${session?.user?.username} |
			        <g:link controller="user" action="logout">Logout</g:link></div>
			<!-- END #login -->
		</g:if>
		<br>
		<!-- if there's no contacts yet, display a message -->
		<g:if test="${list}">
			<a href="${createLink(action: 'addContact')}">Add Contact</a>
			<br>
			<br>
			<g:form action="searchForContact">
				Search for contact: 
				<label for="searchContactName">First Name and/or Last Name</label>
				<g:textField name="searchContactName" /> <g:submitButton name="search" value="search" />
			</g:form>
			<br>
			<br>
			<g:each in="${list}" var="contact">
				<h4> > ${contact.firstName} ${contact.lastName}</h4>
				&nbsp; ${contact.telephoneNumber }<br>
				&nbsp; ${contact.address }<br> 
				&nbsp; ${contact.city }, ${contact.state } ${contact.zipCode }<br>
				&nbsp; <h5><a href="${createLink(action: 'deleteContact', params:[id:contact.id])}">Delete Contact</a></h5>
				&nbsp; -----------------------------------
			</g:each>
		</g:if>
		<g:else>
			You don't have any contacts yet! <a href="${createLink(action: 'addContact')}">Add Contact</a>
		</g:else>
		
		
		
	</body>
</html>