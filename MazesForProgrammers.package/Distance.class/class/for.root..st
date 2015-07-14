instance-creation
for: aGrid root: aPoint
	| distances |
	distances := self new.
	^ distances
		grid: aGrid;
		root: aPoint;
		computeDistances