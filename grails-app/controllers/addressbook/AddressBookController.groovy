package addressbook

class AddressBookController {

    def index() {

		if(session.user){
			def user = User.findByUsername(session.user.username)
			def list = user.contacts
			
			[list:list]
		}
		else{
			redirect(controller:'User', action:'login')
		}
		
	}
	
	def addContact(){
		if (request.method == 'POST') {
			Contact c = new Contact(firstName: params.firstName, lastName: params.lastName, address:params.address, city:params.city, zipCode:params.zipCode, state:params.state, telephoneNumber:params.telephoneNumber, user: session.user)
			if (!c.save()) {
				return [contact:c]
			}
			
			def user = User.findByUsername(session.user.username)
			user.addToContacts(c)
			redirect(view: 'index.gsp')
			
		}
		else {
			render(view:'addContact')
		}
	}
	
	def saveContact(){
//		Contact c = new Contact(firstName: params.firstName, lastName: params.lastName, address:params.address, city:params.city, zipCode:params.zipCode, state:params.state, telephoneNumber:params.telephoneNumber, user: session.user)
//		if (!c.save()) {
//			return redirect(action:'addContact', params:[contact:c])
//		}
//		
//		def user = User.findByUsername(session.user.username)
//		user.addToContacts(c)
//		redirect(view: 'index.gsp')
	}
	
	def deleteContact(int id){
		Contact c = Contact.get(id)
		c.delete(flush: true)
		redirect(view: 'index.gsp')
	}
	
	def searchForContact(){
		def user = User.findByUsername(session.user.username)
		def userContacts = user.contacts
		
		def searchTerms = params.searchContactName.split(" ")
		def allResults = []
		for(searchTerm in searchTerms){
			
			def c = Contact.createCriteria()
			def list = c.list {
				and {
					like('user', user)
					or {
						ilike('firstName', '%' + searchTerm + '%')
						ilike('lastName', '%' + searchTerm + '%')
					}
				}
			}
			
			
//			def list = Contact.findAllWhere(user: user, firstName: searchTerm, lastName: searchTerm)
//			def list = Contact.findAllByLastNameIlikeOrFirstNameIlike(searchTerm, searchTerm)
			allResults.addAll(list)
		}
		allResults.unique()
		
		[list:allResults]

	}
	
	
}
