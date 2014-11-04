<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main" />
		<r:require modules="bootstrap"/>
		<title>Register</title>
	</head>
	<body>
			<h2>Register</h2>
			<br>
			<div class="row">
		      <p class="info">
			       Please give a username and password. <br />
			       Already have an account?
			       <g:link controller="user" action="login">Log in now!</g:link>
		      </p>
		    </div>
			<br>
			<div class="row">
		      <g:hasErrors bean="${user}">
			      <div class="errors">
			        <g:renderErrors bean="${user}"/>
			      </div>
			  </g:hasErrors>
		    </div>
		    
			<g:form url="[controller:'user',action:'register']">
				<label for="firstName">First Name</label>
				<g:textField name="firstName"/>
				<br/>
				<label for="lastName">Last Name</label>
				<g:textField name="lastName"/>
				<br/>
				<label for="username">Username</label>
				<g:textField name="username"/>
				<br/>
				<label for="password">Password</label>
				<g:field type="password" name="password"/>
				<br/>
				<label for="confirm">Confirm Password</label>
				<g:field type="password" name="confirm"/>
				<br/>
				<g:submitButton name="submitButton" value="Register" />
			</g:form>
	</body>
