private
initializeCells
	rows to: 1 by: -1 do: [ :row | 1 to: columns do: [ :col | cells at: col @ row put: Cell new ] ]