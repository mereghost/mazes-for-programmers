as yet unclassified
generate
	| current unvisitedNeighbours direction |
	current := grid randomPoint.
	[ current isNotNil ]
		whileTrue: [ 
			unvisitedNeighbours := (grid neighboursOf: current) associationsSelect: [ :key :value | value walls = 4 ] keys.
			unvisitedNeighbours isEmpty
				ifFalse: [ 
					direction := unvisitedNeighbours shuffle first.
					grid at: current tunnelTowards: direction.
					current := current + (GridDirection for: direction) vector ]
				ifTrue: [ current := nil ] ]