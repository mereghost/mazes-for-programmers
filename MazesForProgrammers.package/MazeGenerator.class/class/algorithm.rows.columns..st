as yet unclassified
algorithm: aKlass rows: rows columns: columns
	| aGrid |
	aGrid := Grid newWithRows: rows andColumns: columns.
	^ aKlass on: aGrid