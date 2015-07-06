instance creation
on: aGrid
	| neighbours direction |
	aGrid
		do: [ :assoc | 
			neighbours := aGrid neighboursOf: assoc key forDirections: #(#north #east).
			neighbours
				ifNotEmpty: [ 
					direction := neighbours keys shuffle first.
					aGrid at: assoc key tunnelTowards: direction ] ].
	^ aGrid