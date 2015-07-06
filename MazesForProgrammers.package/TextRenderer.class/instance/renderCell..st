rendering
renderCell: aCell
	bodyBuffer nextPutAll: '   '.
	(aCell walls includes: #east)
		ifTrue: [ bodyBuffer nextPut: $| ]
		ifFalse: [ bodyBuffer space ].
	(aCell walls includes: #south)
		ifTrue: [ bottomBuffer nextPutAll: '---+' ]
		ifFalse: [ bottomBuffer nextPutAll: '   +' ]