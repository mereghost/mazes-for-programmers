rendering
render: aGrid
	self addTopRow: aGrid columns.
	bodyBuffer nextPut: $|.
	bottomBuffer nextPut: $+.
	aGrid
		do: [ :keyValue | 
			self renderCell: keyValue value.
			keyValue key x = aGrid columns
				ifTrue: [ 
					gridBuffer
						nextPutAll: bodyBuffer contents;
						cr;
						nextPutAll: bottomBuffer contents;
						cr.
					bodyBuffer
						reset;
						nextPut: $|.
					bottomBuffer
						reset;
						nextPut: $+ ] ].
	^ gridBuffer contents