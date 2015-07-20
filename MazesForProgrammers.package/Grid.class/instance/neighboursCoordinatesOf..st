acessing
neighboursCoordinatesOf: aPoint
	^ (self cellsAround: aPoint) values collect: [ :cell | cells keyAtValue: cell ]