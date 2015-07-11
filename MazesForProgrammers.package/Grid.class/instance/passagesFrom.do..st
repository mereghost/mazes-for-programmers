as yet unclassified
passagesFrom: aPoint do: aBlockClosure
	^ ((cells at: aPoint) passages collect: [ :direction | aPoint + (GridDirection directionFor: direction) vector ])
		do: aBlockClosure