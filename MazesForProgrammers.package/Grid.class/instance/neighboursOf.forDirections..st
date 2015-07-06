as yet unclassified
neighboursOf: aPoint forDirections: aCollection
	^ (self cellsAround: aPoint) associationsSelect: [ :keyValue | aCollection includes: keyValue key ]