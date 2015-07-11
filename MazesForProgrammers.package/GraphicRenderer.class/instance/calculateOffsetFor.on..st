rendering
calculateOffsetFor: aPoint on: aGrid
	| yRows offsetX offsetY |
	yRows := aGrid rows.
	offsetX := (aPoint x - 1) * CellMorph cellExtent x.
	offsetY := (yRows - aPoint y) * CellMorph cellExtent y.
	^ offsetX @ offsetY