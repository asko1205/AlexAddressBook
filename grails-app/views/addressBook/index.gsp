<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Render Domain</title>
	</head>
	<body>
		<h2>My Address Book</h2>
		<br>
		<!-- if there's no contacts yet, display a message -->
		<g:if test="${list}">
			<a href="${createLink(action: 'addContact')}">Add Contact</a>
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