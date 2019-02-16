"
Description
--------------------

Abstract superclass of all Seaside components of MDExample. 

I provide some conveniance methods to be used during the redering of the components.
"
Class {
	#name : #MDEComponent,
	#superclass : #WAComponent,
	#category : #'MDExample-WebApplication-Core'
}

{ #category : #convenience }
MDEComponent >> display: aComponentInstance [
	"Set a component instance as the component to display by the root component."

	self rootComponent componentToDisplay: aComponentInstance
]

{ #category : #convenience }
MDEComponent >> displayInstanceOf: aComponentClass [
	"Set a component class as the component to display by the root component."

	self rootComponent displayInstanceOf: aComponentClass
]

{ #category : #accessing }
MDEComponent >> rootComponent [
	^ self session rootComponent
]
