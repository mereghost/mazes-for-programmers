accessing
directionFor: aSymbol
	^ self subclasses detect: [ :klass| klass directionSymbol = aSymbol  ]