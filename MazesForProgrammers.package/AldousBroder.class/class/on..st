instance creation
on: aGrid
	| generator  |
	generator := self new.
	generator visit: (aGrid randomPoint) from: aGrid.
	^ aGrid