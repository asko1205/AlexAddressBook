package addressbook

class User {
	String username
	String password //ONLY HASHED VERSION STORED
	static hasMany = [contacts: Contact]
}
