instance creation
for: aDirection
	^ (self subclasses detect: [ :klass | klass direction = aDirection ]) asLineMorph