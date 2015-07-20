visitor
visit: aPoint from: aGrid withPath: path
	| neighbour position linkPath startPoint |
	startPoint := aPoint.
	[ unvisited includes: startPoint ]
		whileTrue: [ 
			neighbour := (aGrid neighboursCoordinatesOf: aPoint) shuffle first.
			position := path indexOf: neighbour.
			position > 0
				ifFalse: [ 
					path add: neighbour.
					startPoint := neighbour ]
				ifTrue: [ 
					linkPath := path copyFrom: 1 to: position.
					unvisited removeAllSuchThat: [ :point | linkPath includes: point ] ] ].
	self linkCellsFor: linkPath on: aGrid