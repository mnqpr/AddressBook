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

{ #category : #persistence }
AddressBookItem class >> isVoyageRoot [

	^ true
]

{ #category : #persistence }
AddressBookItem class >> voyageCollectionName [

	^ 'AddressBookEntries'
]

{ #category : #initialization }
AddressBookItem >> initialize [

	super initialize.
	addresses := OrderedCollection new.
	phoneNumbers := OrderedCollection new.
	emailAddresses := OrderedCollection new.
	uris := OrderedCollection new
]

{ #category : #accessing }
AddressBookItem >> name [

	self subclassResponsibility
]
