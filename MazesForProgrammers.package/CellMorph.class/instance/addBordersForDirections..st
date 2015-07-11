as yet unclassified
addBordersForDirections: anArray
	anArray do: [ :direction | self addMorph: (CellBorder for: direction) ]