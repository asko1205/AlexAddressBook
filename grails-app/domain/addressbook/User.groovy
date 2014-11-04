package addressbook

class User {
	String username
	String password //ONLY HASHED VERSION STORED
	static hasMany = [contacts: Contact]
	
	// constraints
	static constraints = {
		username  blank:false, unique:true
		password  blank:false
	}
}
