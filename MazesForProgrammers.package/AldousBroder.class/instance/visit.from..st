visitor
visit: aPoint from: aGrid
	| direction newCoordinate |
	visited add: aPoint.
	direction := (aGrid neighboursOf: aPoint) shuffle first.
	newCoordinate := aPoint + (GridDirection directionFor: direction) vector.
	(aGrid passagesFrom: newCoordinate) ifEmpty: [ aGrid at: aPoint tunnelTowards: direction ].
	visited size < aGrid size
		ifTrue: [ self visit: newCoordinate from: aGrid ]