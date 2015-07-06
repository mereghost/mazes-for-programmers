private
initializeCells
	1 to: rows do: [ :row | 1 to: columns do: [ :col | cells at: col @ row put: Cell new ] ]