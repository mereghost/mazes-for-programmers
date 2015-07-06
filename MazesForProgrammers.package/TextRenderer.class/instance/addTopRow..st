rendering
addTopRow: anInteger
	gridBuffer nextPut: $+.
	anInteger timesRepeat: [ gridBuffer nextPutAll: '---+' ].
	gridBuffer cr