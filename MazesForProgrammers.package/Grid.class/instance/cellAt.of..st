as yet unclassified
cellAt: aDirection of: aPoint
	^ cells at: aPoint + (GridDirection directionFor: aDirection) vector ifAbsent: [  ]