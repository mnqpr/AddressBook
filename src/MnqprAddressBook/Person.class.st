Class {
	#name : #Person,
	#superclass : #AddressBookItem,
	#instVars : [
		'firstName',
		'middleName',
		'lastName',
		'birthDate',
		'nameDate',
		'title'
	],
	#category : #MnqprAddressBook
}

{ #category : #accessing }
Person >> name [

	^ lastName, ' ', middleName, ' ', firstName
]
