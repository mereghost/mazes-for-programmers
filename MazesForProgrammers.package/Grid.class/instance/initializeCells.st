initialization
initializeCells
	1 to: rows do: [ :row | 1 to: columns do: [ :col | cells at: row @ col put: Cell new ] ]