as yet unclassified
at: aPoint tunnelTowards: direction
	(cells at: aPoint) toggleWallFor: direction.
	(self cellAt: direction of: aPoint) toggleWallFor: (GridDirection directionFor: direction) reverse