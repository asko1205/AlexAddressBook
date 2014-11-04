<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Search for Contact</title>
	</head>
	<body>
		<fieldset>
			<div class="row">
				<h2>Search Results</h2>
			</div>
			<div class="row">
				<a href="${createLink(action: 'index')}"><span class="glyphicon glyphicon-arrow-left"></span> Back</a>
			</div>
			<br>
			<!-- if there's no contacts yet, display a message -->
			<g:if test="${list}">
				<br>
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
					No results found :(
				</div>
			</g:else>
			
		</fieldset>
	</body>
</html>