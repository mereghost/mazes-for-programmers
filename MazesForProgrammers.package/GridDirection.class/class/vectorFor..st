accessing
vectorFor: aVector
	^ self subclasses detect: [ :cls | cls vector = aVector ]