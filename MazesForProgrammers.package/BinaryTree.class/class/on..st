instance creation
on: aGrid
	| neighbours direction |
	aGrid
		cellsDo: [ :assoc | 
			neighbours := aGrid neighboursOf: assoc key forDirections: #(#north #east).
			neighbours
				ifNotEmpty: [ 
					direction := neighbours keys shuffle first.
					assoc value toggleWallFor: direction.
					(aGrid cellOn: direction of: assoc key) toggleWallFor: (GridDirection directionFor: direction) reverse ] ].
	^ aGrid