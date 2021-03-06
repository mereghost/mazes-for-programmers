rendering
renderCell: aCell withDistance: aNumber
	bodyBuffer
		nextPutAll: ' ';
		nextPutAll: (aNumber radix: 36) asString;
		nextPutAll: ' '.
	(aCell walls includes: #east)
		ifTrue: [ bodyBuffer nextPut: $| ]
		ifFalse: [ bodyBuffer space ].
	(aCell walls includes: #south)
		ifTrue: [ bottomBuffer nextPutAll: '---+' ]
		ifFalse: [ bottomBuffer nextPutAll: '   +' ]