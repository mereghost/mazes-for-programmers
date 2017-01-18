as yet unclassified
hunt
	| neighbour visitedNeighbours |
	current := nil.
	grid closedCells
		detect: [ :point | 
			visitedNeighbours := (grid openNeighboursAt: point) keys.
			visitedNeighbours isNotEmpty
				ifTrue: [ 
					neighbour := visitedNeighbours shuffle first.
					grid at: point tunnelTowards: neighbour.
					^ current := point ]
				ifFalse: [ false ] ]