as yet unclassified
toggleWallFor: aSymbol
	walls remove: aSymbol ifAbsent: [ walls add: aSymbol ]