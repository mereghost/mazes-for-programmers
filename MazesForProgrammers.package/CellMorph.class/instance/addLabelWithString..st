adding
addLabelWithString: aString
	| label xOffset yOffset |
	label := LabelMorph newLabel: aString.
	self addMorph: label.
	xOffset := (self class cellExtent x - label width - (CellBorder borderSize * 2)) / 2.
	yOffset := (self class cellExtent y - label height - (CellBorder borderSize * 2)) / 2.
	label position: xOffset @ yOffset