as yet unclassified
generate
	| point path |
	[ unvisited isEmpty ]
		whileFalse: [ 
			point := unvisited shuffle first.
			path := self randomWalkStartingAt: point.
			self openPath: path ].
	^ grid