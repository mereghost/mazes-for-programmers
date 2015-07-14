as yet unclassified
calculatePathTo: aPoint into: aDistance
	| nearest |
	nearest := (grid passagesFrom: aPoint) detect: [ :point | (distances at: point) < (distances at: aPoint) ].
	aDistance at: nearest put: (distances at: nearest).
	nearest = root
		ifFalse: [ self calculatePathTo: nearest into: aDistance ]