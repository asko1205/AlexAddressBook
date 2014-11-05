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
		zipCode blank:false, size: 5..10, validator:{zip ->
            (zip ==~ /^(\d{5}-\d{4})|(\d{5})$/) ? true : false
        }
		state blank:false
		telephoneNumber blank:false, matches: '\\d{3}\\-\\d{3}\\-\\d{4}'

	}
	
}
