private
createGridMorph: aGrid usingCellRenderBlock: aBlock
	| cell offset |
	gridMorph := self createGridMorphFor: aGrid.
	aGrid
		do: [ :assoc | 
			cell := aBlock value: assoc key value: assoc value.
			offset := self calculateOffsetFor: assoc key on: aGrid.
			gridMorph addMorph: cell.
			cell position: offset ]