instance creation
for: aGrid withDistance: aDistance
	^ self new
		grid: aGrid;
		distance: aDistance;
		renderWithDistances;
		yourself