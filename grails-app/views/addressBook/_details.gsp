<div class="well">

	<div class="row">
		<h4> &nbsp; ${contact.firstName} ${contact.lastName}</h4>
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
	
</div>
