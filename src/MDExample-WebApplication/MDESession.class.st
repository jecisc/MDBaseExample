"
Description
--------------------

Simple session for the MDExample. I save the root component to help with the application management. Each components will be able to access the root component via myself.

Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	rootComponent:		<aComponent>		The root component of the demo. Should be an instance of the root component of the application.

"
Class {
	#name : #MDESession,
	#superclass : #WASession,
	#instVars : [
		'rootComponent'
	],
	#category : #'MDExample-WebApplication-Core'
}

{ #category : #accessing }
MDESession >> rootComponent [
	^ rootComponent
]

{ #category : #accessing }
MDESession >> rootComponent: aRootComponent [
	rootComponent := aRootComponent
]
