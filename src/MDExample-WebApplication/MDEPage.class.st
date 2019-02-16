"
Description
--------------------

I am an abstract component. My subclasses represent the main pages of the application.

Each page should have a name that will be used in the URLs and a priority for the menus.
"
Class {
	#name : #MDEPage,
	#superclass : #MDEComponent,
	#category : #'MDExample-WebApplication-Core'
}

{ #category : #testing }
MDEPage class >> isAbstract [
	^ self = MDEPage
]

{ #category : #accessing }
MDEPage class >> pageName [
	"Title of the page that will be used in menus and URLs."

	^ self subclassResponsibility
]

{ #category : #accessing }
MDEPage class >> pagesToDisplay [
	^ (self allSubclasses reject: #isAbstract) sorted: #priority ascending
]

{ #category : #accessing }
MDEPage class >> pathName [
	"Use to define the URL name"

	^ self pageName copyWithout: $  
]

{ #category : #accessing }
MDEPage class >> priority [
	^ self subclassResponsibility
]

{ #category : #accessing }
MDEPage >> pathName [
	^ self class pathName
]
