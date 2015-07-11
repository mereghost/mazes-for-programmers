as yet unclassified
toggleWallFor: aSymbol
	(walls includes: aSymbol)
		ifTrue: [ 
			walls remove: aSymbol.
			passages add: aSymbol ]
		ifFalse: [ 
			walls add: aSymbol.
			passages remove: aSymbol ]