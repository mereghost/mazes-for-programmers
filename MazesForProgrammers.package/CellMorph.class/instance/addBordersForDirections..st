adding
addBordersForDirections: anArray
	anArray do: [ :direction | self addMorph: (CellBorder for: direction) ]