accessing
cellsAround: aPoint
	| neighbours cell |
	neighbours := Dictionary new.
	#(#north #east #west #south)
		do: [ :direction | 
			cell := cells at: aPoint + (GridDirection directionFor: direction) vector ifAbsent: [  ].
			cell ifNotNil: [ neighbours at: direction put: cell ] ].
	^ neighbours