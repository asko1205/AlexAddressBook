package addressbook

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Contact)
class ContactSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test required firstName field"() {
		
		given: "other required fields have value"
			def contact = new Contact(firstName: 'firstName', lastName: 'lastName', address: 'address', city: 'city', zipCode:'11111', state:'state', telephoneNumber:'123-456-7890');
		when: "required field firstName is null"
			contact.firstName = null
			contact.validate()
		then: 'validation should fail'
			contact.hasErrors()
	}
	
	void "test required lastName field"() {
		
		given: "other required fields have value"
			def contact = new Contact(firstName: 'firstName', lastName: 'lastName', address: 'address', city: 'city', zipCode:'11111', state:'state', telephoneNumber:'123-456-7890');
		when: "required field lastName is null"
			contact.lastName = null
			contact.validate()
		then: 'validation should fail'
			contact.hasErrors()
	}
	
	void "test required address field"() {
		
		given: "other required fields have value"
			def contact = new Contact(firstName: 'firstName', lastName: 'lastName', address: 'address', city: 'city', zipCode:'11111', state:'state', telephoneNumber:'123-456-7890');
		when: "required field address is null"
			contact.address = null
			contact.validate()
		then: 'validation should fail'
			contact.hasErrors()
			
	}
	
	void "test required city field"() {
		
		given: "other required fields have value"
			def contact = new Contact(firstName: 'firstName', lastName: 'lastName', address: 'address', city: 'city', zipCode:'11111', state:'state', telephoneNumber:'123-456-7890');
		when: "required field city is null"
			contact.city = null
			contact.validate()
		then: 'validation should fail'
			contact.hasErrors()
	}
	
	void "test required zipCode field"() {
		
		given: "other required fields have value"
			def contact = new Contact(firstName: 'firstName', lastName: 'lastName', address: 'address', city: 'city', zipCode:'11111', state:'state', telephoneNumber:'123-456-7890');
		when: "required field zipCode is null"
			contact.zipCode = ""
			contact.validate()
		then: 'validation should fail'
			contact.hasErrors()
	}
	
	void "test required state field"() {
		
		given: "other required fields have value"
			def contact = new Contact(firstName: 'firstName', lastName: 'lastName', address: 'address', city: 'city', zipCode:'11111', state:'state', telephoneNumber:'123-456-7890');
		when: "required field state is null"
			contact.state = null
			contact.validate()
		then: 'validation should fail'
			contact.hasErrors()
	}
	
	void "test required telephoneNumber field"() {
		
		given: "other required fields have value"
			def contact = new Contact(firstName: 'firstName', lastName: 'lastName', address: 'address', city: 'city', zipCode:'11111', state:'state', telephoneNumber:'123-456-7890');
		when: "required field telephoneNumber is null"
			contact.telephoneNumber = null
			contact.validate()
		then: 'validation should fail'
			contact.hasErrors()
	}
	
//	void "test valid telephoneNumber field"() {
//		
//		given: "other required fields have value"
//			def contact = new Contact(firstName: 'firstName', lastName: 'lastName', address: 'address', city: 'city', zipCode:'11111', state:'state', telephoneNumber:'123-456-7890');
//		when: "required field telephoneNumber is valid"
//			contact.telephoneNumber = "123-456-7890"
//			contact.validate()
//		then: 'validation should succeed'
//			!contact.hasErrors()
//	}
}

