<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main" />
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
		      <g:if test="${flash.message}">
		          <div class="message">${flash.message}</div>
		      </g:if>
		    </div>
		    
			<g:form url="[controller:'user',action:'register']">
				<label for="username">Username</label>
				<g:textField name="username"/>
				<br/>
				<label for="password">Password</label>
				<g:field type="password" name="password"/>
				<br/>
				<g:submitButton name="submitButton" value="Register" />
			</g:form>
	</body>
