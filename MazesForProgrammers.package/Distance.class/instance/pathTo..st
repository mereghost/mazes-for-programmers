as yet unclassified
pathTo: aPoint
	| breadcrumbs |
	self computeDistances.
	breadcrumbs := Distance new
		grid: grid;
		root: root;
		yourself.
	breadcrumbs at: aPoint put: (distances at: aPoint).
	self calculatePathTo: aPoint into: breadcrumbs.
	^ breadcrumbs