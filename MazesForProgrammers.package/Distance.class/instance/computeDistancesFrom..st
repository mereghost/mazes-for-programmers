as yet unclassified
computeDistancesFrom: aPoint
	(grid passagesFrom: aPoint)
		do: [ :point | 
			distances
				at: point
				ifAbsent: [ 
					distances at: point put: (distances at: aPoint) + 1.
					self computeDistancesFrom: point ] ]