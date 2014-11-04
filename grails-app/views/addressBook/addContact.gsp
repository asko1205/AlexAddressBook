<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Add Contact</title>
	</head>
	<body>
		<fieldset>
			<div class="row">
				<h2>Add a contact</h2>
			</div>
			<div class="row">
			<a href="${createLink(action: 'index')}"><span class="glyphicon glyphicon-arrow-left"></span> Back</a>
			</div>
			<br>
			<br>
			<g:form action="saveContact">
				<div class="row">
					<label for="firstName">First Name</label>
					<g:textField name="firstName" class="form-control"/>
					<br/>
				</div>
				<div class="row">
					<label for="lastName">Last Name</label>
					<g:textField name="lastName" class="form-control"/>
					<br/>
				</div>
				<div class="row">
					<label for="address">Address</label>
					<g:textField name="address" class="form-control"/>
					<br/>
				</div>
				<div class="row">
					<label for="city">City</label>
					<g:textField name="city" class="form-control"/>
					<br/>
				</div>
				<div class="row">
					<label for="zipCode">Zip Code</label>
					<g:textField name="zipCode" class="form-control"/>
					<br/>
				</div>
				<div class="row">
					<label for="state">State</label>
					<g:textField name="state" class="form-control"/>
					<br/>
				</div>
				<div class="row">
					<label for="telephoneNumber">Telephone Number (XXX)XXX-XXXX</label>
					<g:textField name="telephoneNumber" class="form-control"/>
					<br/>
				</div>
				<div class="row">
					<g:submitButton name="create" class="btn btn-primary" value="Save" />
				</div>
			</g:form>
		</fieldset>
	</body>


</html>