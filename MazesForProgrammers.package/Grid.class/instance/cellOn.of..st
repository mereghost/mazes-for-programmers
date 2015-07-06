as yet unclassified
cellOn: aDirection of: aPoint
	^ self cellAt: aPoint + (GridDirection directionFor: aDirection) vector