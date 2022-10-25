Class {
	#name : #AddressBookItem,
	#superclass : #Object,
	#instVars : [
		'addresses',
		'phoneNumbers',
		'emailAddresses',
		'uris',
		'logo'
	],
	#category : #MnqprAddressBook
}

{ #category : #initialization }
AddressBookItem >> initialize [

	super initialize.
	addresses := OrderedCollection new.
	phoneNumbers := OrderedCollection new.
	emailAddresses := OrderedCollection new.
	uris := OrderedCollection new
]
