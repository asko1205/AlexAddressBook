package addressbook

class UserController {

    def index() { }
	
	def register(){
		// new user posts his registration details
		if (request.method == 'POST') {
			// create domain object and assign parameters using data binding
			def u = new User(params)
			u.password = u.password.encodeAsPassword()

			if (! u.save()) {
				// validation failed, render registration page again
				flash.message = "User already exists!"
				return [user:u]
			} else {
				// validate/save ok, store user in session, redirect to homepage
				session.user = u
				redirect(controller:'AddressBook', view:'index.gsp')
			}

		} else if (session.user) {
			// don't allow registration while user is logged in
			redirect(controller:'AddressBook', view:'index.gsp')
		}
	}
	
	
	def login = {
		if (request.method == 'POST') {
			def passwordHashed = params.password.encodeAsPassword()
			def u = User.findByUsernameAndPassword(params.username, passwordHashed)
			if (u) {
				// username and password match -> log in
				session.user = u
				redirect(controller:'AddressBook', view:'index.gsp')
			} else {
				flash.message = "User not found"
				redirect(controller:'User', action:'login')
			}
		} else if (session.user) {
			// don't allow login while user is logged in
			redirect(controller:'AddressBook', view:'index.gsp')
		}
	}
	
	def logout = {
		session.invalidate()

	}
	
	
	
}
