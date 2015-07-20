instance creation
on: aGrid
	| generator |
	generator := self new.
	generator loadCoordinatesOf: aGrid.
	generator tunnelThru: aGrid.
	^ aGrid	"	
	unvisited addAll: aGrid cells keys.
	first := aGrid randomPoint.
	[ 
	point := unvisited shuffle first.
	path := #(#point).
	[ 
	otherPoint := (aGrid neighboursOf: point) shuffle first.
	(path index: otherPoint)
		ifNil: [ path add: otherPoint ]
		ifNotNil: [ path := path from: 1 to: (path index: otherPoint) ].
	0 to: path size - 1 do: [ :i | path at: i ] ] doWhileFalse: [ unvisited includes: point ] ]
		doWhileFalse: [ unvisited empty ]"