"
Description
--------------------

I am the reader of the application.
"
Class {
	#name : #MDEHeader,
	#superclass : #MDEComponent,
	#category : #'MDExample-WebApplication-Core'
}

{ #category : #accessing }
MDEHeader >> possiblePages [
	^ MDEPage pagesToDisplay
]

{ #category : #rendering }
MDEHeader >> renderContentOn: html [
	html
		mdlLayoutHeader: [ 
			html
				mdlLayoutHeaderRow: [ 
					html mdlNavigationLink
						callback: [ "Just refresh" ];
						with: [ html
								mdlLayoutTitle: 'Application example for MDL.' ].
					html mdlLayoutSpacer.
					html text: 'Version 0.0.0'. ] ].
	self renderDrawerOn: html
]

{ #category : #rendering }
MDEHeader >> renderDrawerOn: html [
	html
		mdlLayoutDrawer: [ 
			html
				mdlNavigation: [ 
					self possiblePages
						do: [ :aClass | 
							html mdlNavigationLink
								beCurrentIf: aClass = self rootComponent componentToDisplay class;
								callback: [ self displayInstanceOf: aClass ];
								with: aClass pageName ] ] ]
]
