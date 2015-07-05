accessing
cellsAround: aPoint
	| neighbours cell |
	neighbours := Dictionary new.
	#(#north #east #west #south)
		do: [ :direction | 
			cell := self cellAt: aPoint + (GridDirection directionFor: direction) vector.
			cell ifNotNil: [ neighbours at: direction put: cell ] ].
	^ neighbours