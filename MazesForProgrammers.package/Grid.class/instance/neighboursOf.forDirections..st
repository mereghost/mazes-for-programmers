acessing
neighboursOf: aPoint forDirections: aCollection
	^ (self cellsAround: aPoint) keys select: [ :direction | aCollection includes: direction ]