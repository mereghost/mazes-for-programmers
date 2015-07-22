as yet unclassified
randomWalkStartingAt: aPoint
	| point position path |
	point := aPoint.
	path := OrderedCollection newFrom: {aPoint}.
	[ unvisited includes: point ]
		whileTrue: [ 
			point := (grid neighboursCoordinatesOf: point) shuffle first.
			position := path indexOf: point.
			position = 0
				ifTrue: [ path add: point ]
				ifFalse: [ path := path copyFrom: 1 to: position ] ].
	^ path