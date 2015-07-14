rendering
render: aGrid withDistances: aDistance
	| cellMorph |
	self
		createGridMorph: aGrid
		usingCellRenderBlock: [ :point :cell | 
			cellMorph := self cellMorphFor: cell.
			(aDistance at: point) ifNotNil: [ cellMorph addLabelWithString: (aDistance at: point) asString ].
			cellMorph ].
	^ gridMorph