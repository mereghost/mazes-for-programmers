as yet unclassified
at: aPoint tunnelTowards: direction
	| neighbour |
	neighbour := self cellAt: direction of: aPoint.
	neighbour
		ifNotNil: [ 
			(cells at: aPoint) toggleWallFor: direction.
			neighbour toggleWallFor: (GridDirection directionFor: direction) reverse ]