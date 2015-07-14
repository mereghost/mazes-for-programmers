as yet unclassified
computeDistances
	grid
		passagesFrom: root
		do: [ :point | 
			distances
				at: point
				ifAbsent: [ 
					distances at: point put: (distances at: root) + 1.
					self computeDistancesFrom: point ] ]