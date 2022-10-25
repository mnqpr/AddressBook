Class {
	#name : #AddressBookApp,
	#superclass : #SpApplication,
	#instVars : [
		'repository'
	],
	#category : #MnqprAddressBook
}

{ #category : #initialization }
AddressBookApp >> initializeRepository [

	repository := VOMongoRepository host: '172.16.1.80' database: 'mnqpr'
]

{ #category : #accessing }
AddressBookApp >> repository [

	^ repository
]

{ #category : #running }
AddressBookApp >> start [

	self initializeRepository.
	(AddressBookListPresenter newApplication: self) open
]
