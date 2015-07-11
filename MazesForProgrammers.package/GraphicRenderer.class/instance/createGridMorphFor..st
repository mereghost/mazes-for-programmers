private
createGridMorphFor: aGrid
	^ BorderedMorph new
		extent: (aGrid columns * CellMorph cellExtent x) @ (aGrid rows * CellMorph cellExtent y);
		color: Color transparent;
		borderWidth: 0