<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Add your Contact</title>
		
	</head>
	<body>
		<g:form class="simpleform" url="[controller:'user',action:'login']">
		    <fieldset>
		    <div class="row">
		      <h2>Login</h2>
		    </div>
		    <div class="row">
		      <p class="info">
			       Please login with your username and password. <br />
			       Don't have an account?
			       <g:link controller="user" action="register">Sign up now!</g:link>
		      </p>
		    </div>
		    <br>
		    <div class="row">
		      <g:if test="${flash.message}">
		          <div class="message">${flash.message}</div>
		      </g:if>
		    </div>
		    <div class="row">
		      <p>
		        <label for="username">Username</label>
		        <g:textField name="username" class="form-control" />
		      </p>
		    </div>
		    <div class="row">
		      <p>
		        <label for="password">Password</label>
		        <g:passwordField name="password" class="form-control" />
		      </p>
		    </div>
		    <br>
		    <div class="row">
		      <p class="button">
		        <label>&nbsp;</label>
		        <g:submitButton class="button btn btn-primary" name="submitButton" value="Login" />
		      </p>
		    </div>
		    </fieldset>
	  </g:form>
	
	</body>


</html>