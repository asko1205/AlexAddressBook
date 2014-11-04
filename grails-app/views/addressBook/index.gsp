<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>My Address Book</title>
	</head>
	<body>
	<fieldset>
		<div class="row">
			<h2>My Address Book</h2>
		</div>
		<div class="row">
			<g:if test="${session?.user}">
				<div id="login">
				        Welcome, ${session?.user?.firstName}! |
				        <g:link controller="user" action="logout">Logout</g:link></div>
				<!-- END #login -->
			</g:if>
		</div>
		<br>
		<!-- if there's no contacts yet, display a message -->
		<g:if test="${list}">
			<div class="row">
				<a class="btn btn-success btnText" href="${createLink(action: 'addContact')}"><span class="glyphicon glyphicon-pencil"></span> Add Contact</a>
			</div>
			<br>
			<g:form action="searchForContact" class="form-inline">
				<div class="well">
					<div class="row">
						Search for contact: 
					</div>
					<div class="row">
						<label for="searchContactName">First Name and/or Last Name</label>
						<g:textField name="searchContactName" class="form-control"/> <g:submitButton name="search" value="Search" class="btn btn-primary" />
					</div>
				</div>
			</g:form>
			<br>

			<g:each in="${list}" var="contact">
				<div class="row">
					<h4> > ${contact.firstName} ${contact.lastName}</h4>
				</div>
				<div class="row">
					&nbsp; ${contact.telephoneNumber }<br>
				</div>
				<div class="row">
					&nbsp; ${contact.address }<br>
				</div>
				<div class="row"> 
					&nbsp; ${contact.city }, ${contact.state } ${contact.zipCode }<br>
				</div>
				<div class="row">
					&nbsp; <span class="label label-danger"><a class="btnText" href="${createLink(action: 'deleteContact', params:[id:contact.id])}"><span class="glyphicon glyphicon-trash"></span> Delete</a></span>
				</div>
				<div class="row">
					&nbsp; -----------------------------------
				</div>
			</g:each>
		</g:if>
		<g:else>
			<div class="row">
				You don't have any contacts yet! <a class="btn btn-success btnText" href="${createLink(action: 'addContact')}"><span class="glyphicon glyphicon-pencil"></span> Add Contact</a>
			</div>
		</g:else>
		
		
	</fieldset>	
	</body>
</html>