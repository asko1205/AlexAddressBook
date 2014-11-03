<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Add your Contact</title>
	</head>
	<body>
		<g:form class="simpleform" url="[controller:'user',action:'login']">
		    <fieldset>
		      <h2>Login</h2>
		      <p class="info">
			       Please login with your username and password. <br />
			       Don't have an account?
			       <g:link controller="user" action="register">Sign up now!</g:link>
		      </p>
		      <br>
		      <p>
		        <label for="username">Username</label>
		        <g:textField name="username" />
		      </p>
		      <p>
		        <label for="password">Password</label>
		        <g:passwordField name="password" />
		      </p>
		      <p class="button">
		        <label>&nbsp;</label>
		        <g:submitButton class="button" name="submitButton" value="Login" />
		      </p>
		    </fieldset>
	  </g:form>
	
	</body>


</html>