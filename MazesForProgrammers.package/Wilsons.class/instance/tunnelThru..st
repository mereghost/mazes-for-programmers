as yet unclassified
tunnelThru: aGrid
	| point path position current nextCell |
	[ unvisited isEmpty ]
		whileFalse: [ 
			point := unvisited shuffle first.
			path := OrderedCollection newFrom: {point}.
			[ unvisited includes: point ]
				whileTrue: [ 
					point := (aGrid neighboursCoordinatesOf: point) shuffle first.
					position := path indexOf: point.
					position = 0
						ifTrue: [ path add: point ]
						ifFalse: [ path := path copyFrom: 1 to: position ] ].
			1 to: path size - 1 do: [ :index | 
				unvisited remove: (path at: index) ifAbsent: [  ].
				current := path at: index.
				nextCell := (path at: index + 1) - current.
				aGrid at: current tunnelTowards: (GridDirection vectorFor: nextCell) directionSymbol ] ].
	^ aGrid