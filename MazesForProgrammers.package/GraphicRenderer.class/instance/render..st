rendering
render: aGrid
	| gridMorph cell offset |
	gridMorph := self createGridMorphFor: aGrid.
	aGrid
		do: [ :assoc | 
			cell := self cellMorphFor: assoc value.
			offset := self calculateOffsetFor: assoc key on: aGrid.
			Transcript
				show: assoc key;
				show: ' => ';
				show: offset;
				cr.
			gridMorph addMorph: cell.
			cell position: offset ].
	gridMorph openInWorld