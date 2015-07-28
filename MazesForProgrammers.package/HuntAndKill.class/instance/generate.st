translating
generate
	| current unvisited neighbour |
	current := grid randomPoint.
	[ current isNotNil ]
		whileTrue: [ 
			unvisited := self unvistedNeighboursFor: current.
			unvisited isNotEmpty
				ifTrue: [ 
					neighbour := unvisited values shuffle first.
					grid at: current tunnelTowards: (unvisited keyAtValue: neighbour).
					current := neighbour ]
				ifFalse: [ current := nil ].
			current := self findUnvisitedCells ]