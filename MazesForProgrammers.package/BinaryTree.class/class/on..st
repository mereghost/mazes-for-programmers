instance creation
on: aGrid
	| neighbours direction |
	aGrid
		cellsDo: [ :assoc | 
			neighbours := (aGrid cellsAround: assoc key) associationsSelect: [ :pair | #(#north #east) hasLiteral: pair key ].
			neighbours
				ifNotEmpty: [ 
					direction := neighbours keys shuffle first.
					assoc value toggleWallFor: direction ] ].
	^ aGrid