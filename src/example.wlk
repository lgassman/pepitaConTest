/** First Wollok example */
object pepita {
	
	var energia = 100
	
	method comer(alimento) {
		energia = energia + alimento.energiaQueAporta() 
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
	
	method energia(_energia) {
		energia = _energia
	}
	
}

object alpiste {
	
	method energiaQueAporta() {
		pepita.energia()
		return 20
	}

}

object manzana {
	
	var madurez = 1
	const base = 5
	
	method madurar() {
		self.madurez(self.madurez() + 1)
	}
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method energiaQueAporta() {
		return base * madurez 
	}
	
	method rica() {
		return self.madurez() > 2
	}
	
}

object pepon {
	var energia = 30
	
	method energia() {
		return energia
	}
	
	method comer(alimento) {
		energia = energia + alimento.energiaQueAporta()/2
	}
	
	method volar(distancia) {
		energia = energia - 20 - distancia * 2
	}
	
}

object roque {
	
	var ave = pepita
	var cenas = 0
	
	method ave(_ave) {
		ave = _ave
		cenas = 0
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
		cenas = cenas + 1
	}
	
	method cenas() {
		return cenas
	}
	
}




