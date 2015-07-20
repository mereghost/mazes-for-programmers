as yet unclassified
linkCellsFor: aPath on: aGrid
	| point neighbour vector |
	1 to: aPath size - 1 do: [ :index | 
		point := aPath at: index.
		neighbour := aPath at: index + 1.
		vector := neighbour - point.
		aGrid at: point tunnelTowards: (GridDirection vectorFor: vector) directionSymbol ]