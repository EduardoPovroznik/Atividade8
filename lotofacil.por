programa
{
	inclua biblioteca Util --> u
	
	inteiro nmr_sclhds2
	inteiro Apostas2
	inteiro saida2
	
	logico repetido2 = falso
	inteiro vetorio2[21]

	inteiro ajuda2
	funcao inicio()
	{
Falas_loto()
apostas_loto()
money_loto()

	}

	
	funcao Falas_loto(){
escreva("Quantas apostas vai querer? Só pode até 6!\n")
leia(Apostas2)
	enquanto(Apostas2 < 1 ou Apostas2 > 6) {
		escreva("Só pode ser entre 1 e 6, tente de novo \n ")
	leia(Apostas2)
	}
	 escreva("\n Quantas decenas vai querer, escolha entre 15 e 20 \n ")
	leia(nmr_sclhds2)
	enquanto(nmr_sclhds2 < 15 ou nmr_sclhds2 > 20) {
		escreva("Só pode ser entre 15 e 20, tente de novo \n ")
	leia(nmr_sclhds2)
	}}
	


	funcao apostas_loto(){
		se(Apostas2 <= 6 e Apostas2 >= 1){ 
para(inteiro A = 0; A < Apostas2; A++) {
      se(nmr_sclhds2 >= 15 e nmr_sclhds2 <= 20){
	 	sorteio_loto()
	 	ordena_loto()		
	 	escreva("\n")
	 	resultado_loto()
	}}}}


funcao sorteio_loto(){
para (inteiro i = 0; i < nmr_sclhds2; i++) {
	 faca{
  saida2 = u.sorteia(1,25)
 Repeticao_loto()
 }enquanto(repetido2)
vetorio2[i] = saida2
}}

	
funcao Repeticao_loto(){
 repetido2 = falso
       para(inteiro O = 0; O < nmr_sclhds2; O++){
 	
 	se(saida2 == vetorio2[O]){
 		repetido2 = verdadeiro
 		pare
 } } }


 funcao ordena_loto(){


	para(inteiro i = 0; i < nmr_sclhds2; i++){
		para(inteiro O = i + 1; O < nmr_sclhds2; O++){
			se(vetorio2[O] < vetorio2[i]){
				ajuda2 = vetorio2[i]
				vetorio2[i] = vetorio2[O]
				vetorio2[O] = ajuda2
}}}}


funcao resultado_loto(){
	para (inteiro i = 0; i < nmr_sclhds2; i++) {
escreva(vetorio2[i], " ")
	
}}


funcao money_loto(){
	se(nmr_sclhds2 == 15){
escreva("\nTeu preço total é: \n", 2.50 * Apostas2, " reais.")		
	}
se(nmr_sclhds2 == 16){
escreva("\nTeu preço total é: \n", 40 * Apostas2, " reais.")		
	}
	se(nmr_sclhds2 == 17){
escreva("\nTeu preço total é: \n", 340 * Apostas2, " reais.")		
	}
	se(nmr_sclhds2 == 18){
escreva("\nTeu preço total é: \n", 2040 * Apostas2, " reais.")		
	}
	se(nmr_sclhds2 == 19){
escreva("\nTeu preço total é: \n", 9690 * Apostas2, " reais.")	
	}
	se(nmr_sclhds2 == 20){
escreva("\nTeu preço total é: \n", 38760 * Apostas2, " reais.")		
}}

}
