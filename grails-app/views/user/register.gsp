<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main" />
		<title>Register</title>
	</head>
	<body>
			<h2>Register</h2>
			<br>
			<br>
			<g:form url="[controller:'user',action:'register']">
				<label for="userName">Username</label>
				<g:textField name="userName"/>
				<br/>
				<label for="password">Password</label>
				<g:field type="password" name="password"/>
				<br/>
				<g:submitButton name="submitButton" value="Register" />
			</g:form>
	</body>
