package addressbook

class AddressBookController {

    def index() {
		if(session.user){
			def list = Contact.findAll()
			[list:list]
		}
		else{
			redirect(controller:'User', action:'login')
		}
		
	}
	
	def addContact(){
	}
	
	def saveContact(){
		Contact c = new Contact(firstName: params.firstName, lastName: params.lastName, address:params.address, city:params.city, zipCode:params.zipCode, state:params.state, telephoneNumber:params.telephoneNumber)
		c.save()
		redirect(view: 'index.gsp')
	}
	
	def deleteContact(int id){
		Contact c = Contact.get(id)
		System.out.println(c.firstName);
		c.delete(flush: true)
		redirect(view: 'index.gsp')
	}
	
	def searchForContact(){
		def searchTerms = params.searchContactName.split(" ")
		def allResults = []
		for(searchTerm in searchTerms){
			def list = Contact.findAllByLastNameOrFirstNameIlike(searchTerm, searchTerm)
			allResults.addAll(list)
		}
		allResults.unique()
		
		[list:allResults]

	}
	
	
}
