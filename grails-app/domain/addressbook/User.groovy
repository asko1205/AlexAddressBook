package addressbook

class User {
	String firstName
	String lastName
	String username
	String password //ONLY HASHED VERSION STORED
	String confirm  //NOT STORED
	static hasMany = [contacts: Contact]
	
	// constraints
	static constraints = {
		firstName blank:false
		lastName blank:false
		username  blank:false, unique:true
		password  blank:false, validator: { val, obj ->
		    //obj.confirm == val
			if (obj.password != obj.confirm)
				return 'user.password.dontmatch'
		}
	}
}
