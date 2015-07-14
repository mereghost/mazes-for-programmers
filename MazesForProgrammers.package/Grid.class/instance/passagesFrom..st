as yet unclassified
passagesFrom: aPoint
	^ (cells at: aPoint) passages collect: [ :direction | aPoint + (GridDirection directionFor: direction) vector ]