<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Add Contact</title>
	</head>
	<body>
		<h2>Add a contact</h2>
		<a href="${createLink(action: 'index')}">Back</a>
		<br>
		<br>
		<g:form action="saveContact">
			<label for="firstName">First Name</label>
			<g:textField name="firstName"/>
			<br/>
			<label for="lastName">Last Name</label>
			<g:textField name="lastName"/>
			<br/>
			<label for="address">Address</label>
			<g:textField name="address"/>
			<br/>
			<label for="city">City</label>
			<g:textField name="city"/>
			<br/>
			<label for="zipCode">Zip Code</label>
			<g:textField name="zipCode"/>
			<br/>
			<label for="state">State</label>
			<g:textField name="state"/>
			<br/>
			<label for="telephoneNumber">Telephone Number (XXX)XXX-XXXX</label>
			<g:textField name="telephoneNumber"/>
			<br/>
			<g:submitButton name="create" value="Save" />
		</g:form>
	
	</body>


</html>