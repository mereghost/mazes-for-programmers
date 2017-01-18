translating
generate
	"2.2 Caso não tenha, current <- nil
	 2.2.1 Percorre o grid procurando 'top-to-bottom'
	 2.2.2 Procura um ponto sem links mas com visinhos que tenham
	 2.2.3 Faz o link entre eles.
	 2.2.4 current <- ponto"

	current := grid randomPoint.
	[ current isNotNil ]
		whileTrue: [ 
			"killPhase recursiva, sai pra HuntPhase que chama kill phase. "
			self kill ].
	^ grid