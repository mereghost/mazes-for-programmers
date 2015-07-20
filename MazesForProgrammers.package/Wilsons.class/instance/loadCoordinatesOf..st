as yet unclassified
loadCoordinatesOf: aGrid
	1 to: aGrid rows do: [ :row | 1 to: aGrid columns do: [ :col | unvisited add: col @ row ] ].
	unvisited remove: (unvisited shuffle first)