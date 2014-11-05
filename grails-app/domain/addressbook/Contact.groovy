package addressbook

class Contact {

    String firstName
	String lastName
	String address
	String city
	int zipCode
	String state
	String telephoneNumber
	static belongsTo = [user: User]
	
	// constraints
	static constraints = {
		firstName blank:false
		lastName blank:false
		address blank:false
		city blank:false
		zipCode blank:false
		state blank:false
		telephoneNumber blank:false

	}
	//LOOK AT HOW TO ADD , matches: '\\d{3}\\-\\d{3}\\-\\d{4}' TO telephoneNumber contraint and have it work with error messages
	
}
