rendering
renderWithDistances
	| cellMorph |
	self
		createGridMorph: grid
		usingCellRenderBlock: [ :point :cell | 
			cellMorph := self cellMorphFor: cell.
			(distances at: point)
				ifNotNil: [ 
					cellMorph backgroundColor: (self backgroundColorAt: point).
					cellMorph addLabelWithString: (distances at: point) asString ].
			cellMorph ].
	^ gridMorph