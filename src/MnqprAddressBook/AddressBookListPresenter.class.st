Class {
	#name : #AddressBookListPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'addressBookList'
	],
	#category : #MnqprAddressBook
}

{ #category : #initialization }
AddressBookListPresenter >> defaultLayout [

	^ SpBoxLayout newTopToBottom
		  add: addressBookList;
		  yourself
]

{ #category : #initialization }
AddressBookListPresenter >> initializePresenters [

	addressBookList := self newTable
		                   addColumn:
			                   (SpStringTableColumn
				                    title: 'Name'
				                    evaluated: #name);
		                   yourself
]

{ #category : #initialization }
AddressBookListPresenter >> updatePresenter [

	addressBookList items: (self application repository selectAll: AddressBookItem)
]
