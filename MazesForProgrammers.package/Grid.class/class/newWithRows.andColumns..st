instance creation
newWithRows: rowTotal andColumns: colTotal
	^ self new
		rows: rowTotal;
		columns: colTotal;
		initializeCells