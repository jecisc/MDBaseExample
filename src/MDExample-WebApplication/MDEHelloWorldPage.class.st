"
Description
--------------------

TODO
"
Class {
	#name : #MDEHelloWorldPage,
	#superclass : #MDEPage,
	#category : #'MDExample-WebApplication-Pages'
}

{ #category : #accessing }
MDEHelloWorldPage class >> pageName [
	^ 'Hello world'
]

{ #category : #accessing }
MDEHelloWorldPage class >> priority [
	^ 1
]

{ #category : #rendering }
MDEHelloWorldPage >> renderContentOn: html [
	html div style: 'min-height: 400px;'; with: 'Hello world'
]
