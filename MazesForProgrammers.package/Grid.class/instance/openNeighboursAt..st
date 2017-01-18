as yet unclassified
openNeighboursAt: aPoint 
		^ (self cellsAround: aPoint) select: [ :assoc | assoc value open ]