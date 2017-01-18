as yet unclassified
kill
	| unvisitedNeighbours neighbour |
	unvisitedNeighbours := (grid closedNeighboursAt: current) keys.
	unvisitedNeighbours isNotEmpty
		ifTrue: [ 
			neighbour := unvisitedNeighbours shuffle first.
			grid at: current tunnelTowards: neighbour.
			current := current + (GridDirection directionFor: neighbour) vector ]
		ifFalse: [ self hunt ]