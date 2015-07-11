as yet unclassified
computeDistancesFor: aGrid startingAt: aPoint
	aGrid
		passagesFrom: aPoint
		do: [ :point | 
			cells
				at: point
				ifAbsent: [ 
					cells at: point put: (cells at: aPoint) + 1.
					self computeDistancesFor: aGrid startingAt: point ] ]