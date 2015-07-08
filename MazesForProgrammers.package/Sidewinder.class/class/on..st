as yet unclassified
on: aGrid
	| run neighbours east_boundary north_boundary should_close_run |
	run := OrderedCollection new.
	aGrid
		do: [ :pointCell | 
			run add: pointCell key.
			neighbours := aGrid neighboursOf: pointCell key forDirections: #(#north #east).
			east_boundary := (neighbours includes: #east) not.
			north_boundary := (neighbours includes: #north) not.
			should_close_run := east_boundary or: [ north_boundary not and: [ (Random new nextInt: 2) = 1 ] ].
			should_close_run
				ifTrue: [ 
					aGrid at: run shuffle first tunnelTowards: #north.
					run reset ]
				ifFalse: [ aGrid at: pointCell key tunnelTowards: #east ] ].
	^ aGrid