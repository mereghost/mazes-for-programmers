as yet unclassified
hunt
	| neighbour point |
	current := nil.
	point := grid closedCells detect: [ :location | (grid openNeighboursAt: location) keys isNotEmpty ] ifNone: [ nil ].
	point isNotNil
		ifTrue: [ 
			neighbour := (grid openNeighboursAt: point) keys shuffle first.
			grid at: point tunnelTowards: neighbour.
			^ current := point ]