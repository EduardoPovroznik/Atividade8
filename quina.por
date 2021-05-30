programa
{
	inclua biblioteca Util --> u
	
	inteiro nmr_sclhds
	inteiro Apostas
	inteiro saida
	
	logico repetido = falso
	inteiro vetorio[16]

	inteiro ajuda
	funcao inicio()
	{
Falas_quina()
apostas_quina()
money_quina()

	}

	
	funcao Falas_quina(){
escreva("Quantas apostas vai querer? Só pode até 6!\n")
leia(Apostas)
	enquanto(Apostas < 1 ou Apostas > 6) {
		escreva("Só pode ser entre 1 e 6, tente de novo \n ")
	leia(Apostas)
	}
	 escreva("\n Quantas decenas vai querer, escolha entre 5 e 15 \n ")
	leia(nmr_sclhds)
	enquanto(nmr_sclhds < 5 ou nmr_sclhds > 15) {
		escreva("Só pode ser entre 5 e 15, tente de novo \n ")
	leia(nmr_sclhds)
	}}
	


	funcao apostas_quina(){
		se(Apostas <= 6 e Apostas >= 1){ 
para(inteiro A = 0; A < Apostas; A++) {
      se(nmr_sclhds >= 5 e nmr_sclhds <= 15){
	 	sorteio_quina()
	 	ordena_quina()		
	 	escreva("\n")
	 	resultado_quina()
	}}}}


funcao sorteio_quina(){
para (inteiro i = 0; i < nmr_sclhds; i++) {
	 faca{
  saida = u.sorteia(1,80)
 Repeticao_quina()
 }enquanto(repetido)
vetorio[i] = saida
}}

	
funcao Repeticao_quina(){
 repetido = falso
       para(inteiro O = 0; O < nmr_sclhds; O++){
 	
 	se(saida == vetorio[O]){
 		repetido = verdadeiro
 		pare
 } } }


 funcao ordena_quina(){


	para(inteiro i = 0; i < nmr_sclhds; i++){
		para(inteiro O = i + 1; O < nmr_sclhds; O++){
			se(vetorio[O] < vetorio[i]){
				ajuda = vetorio[i]
				vetorio[i] = vetorio[O]
				vetorio[O] = ajuda
}}}}


funcao resultado_quina(){
	para (inteiro i = 0; i < nmr_sclhds; i++) {
escreva(vetorio[i], " ")
	
}}


funcao money_quina(){
	se(nmr_sclhds == 5){
escreva("\nTeu preço total é: \n", 3 * Apostas, " reais.")		
	}
se(nmr_sclhds == 6){
escreva("\nTeu preço total é: \n", 18 * Apostas, " reais.")		
	}
	se(nmr_sclhds == 7){
escreva("\nTeu preço total é: \n", 60 * Apostas, " reais.")		
	}
	se(nmr_sclhds == 8){
escreva("\nTeu preço total é: \n", 160 * Apostas, " reais.")		
	}
	se(nmr_sclhds == 9){
escreva("\nTeu preço total é: \n", 350 * Apostas, " reais.")		
	}
	se(nmr_sclhds == 10){
escreva("\nTeu preço total é: \n", 700 * Apostas, " reais.")		
	}
	se(nmr_sclhds == 11){
escreva("\nTeu preço total é: \n", 1250 * Apostas, " reais." )		
	}
	se(nmr_sclhds == 12){
escreva("\nTeu preço total é: \n", 2000 * Apostas, " reais.")		
	}
	se(nmr_sclhds == 13){
escreva("\nTeu preço total é: \n", 3200 * Apostas, " reais.")		
	}
	se(nmr_sclhds == 14){
escreva("\nTeu preço total é: \n", 5000 * Apostas, " reais.")		
	}
	se(nmr_sclhds == 15){
escreva("\nTeu preço total é: \n", 7500 * Apostas, " reais.")		
	}










	
}
}
