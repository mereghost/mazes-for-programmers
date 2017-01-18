calculating
longestPath
	| point |
	point := distances keyAtValue: self max.
	^ self pathTo: point