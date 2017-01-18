acessing
closedNeighboursAt: aPoint
	^ (self cellsAround: aPoint) select: [ :assoc | assoc value closed ]