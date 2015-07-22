initialization
openPath: aPath
	| current nextCell |
	1 to: aPath size - 1 do: [ :index | 
		unvisited remove: (aPath at: index) ifAbsent: [  ].
		current := aPath at: index.
		nextCell := (aPath at: index + 1) - current.
		grid at: current tunnelTowards: (GridDirection vectorFor: nextCell) directionSymbol ]