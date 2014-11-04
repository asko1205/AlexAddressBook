<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main" />
		<title>Register</title>
	</head>
	<body>
		<fieldset>
		<div class="row">
			<h2>Register</h2>
		</div>
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
				<label for="username">Username</label>
				<g:textField name="username" class="form-control"/>
				<br/>
			</div>
			<div class="row">
				<label for="password">Password</label>
				<g:field type="password" name="password" class="form-control"/>
				<br/>
			</div>
			<div class="row">
				<label for="confirm">Confirm Password</label>
				<g:field type="password" name="confirm" class="form-control"/>
				<br/>
			</div>
			<div class="row">
				<g:submitButton name="submitButton" value="Register" class="btn btn-primary" />
			</div>
		</g:form>
		</fieldset>
	</body>
