accessing
max
	^ distances values max > 0
		ifTrue: [ distances values max ]
		ifFalse: [ 1 ]