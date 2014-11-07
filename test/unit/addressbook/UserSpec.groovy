package addressbook

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(User)
class UserSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }


	void "test required firstName field"() {
		
		given: "other required fields have value"
			def user = new User(firstName: 'firstName', lastName: 'lastName', username: 'username', password: 'password');
		when: "required field password is null"
			user.firstName = null
			user.validate()
		then: 'validation should fail'
			user.hasErrors()
	}
	
	void "test required lastName field"() {
		
		given: "other required fields have value"
			def user = new User(firstName: 'firstName', lastName: 'lastName', username: 'username', password: 'password');
		when: "required field password is null"
			user.lastName = null
			user.validate()
		then: 'validation should fail'
			user.hasErrors()
	}
	
	void "test required username field"() {
		
		given: "other required fields have value"
			def user = new User(firstName: 'firstName', lastName: 'lastName', username: 'username', password: 'password');
		when: "required field username is null"
			user.username = null
			user.validate()
		then: 'validation should fail'
			user.hasErrors()
			
	}
	
	void "test required password field"() {
		
		given: "other required fields have value"
			def user = new User(firstName: 'firstName', lastName: 'lastName', username: 'username', password: 'password');
		when: "required field password is null"
			user.password = null
			user.validate()
		then: 'validation should fail'
			user.hasErrors()
	}
	
	void "test nonmatching password and confirm"() {
		
		given: "other fields are valid"
			def user = new User(firstName: 'firstName', lastName: 'lastName', username: 'username');
		when: "password and confirm have different values"
			user.password = 'password'
			user.confirm = 'unpassword'
			user.validate()
		then: 'validation should fail'
			user.hasErrors()
	}
	

	
	

}
