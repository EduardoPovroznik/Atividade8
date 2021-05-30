programa
{
	inclua biblioteca Util
 --> u

	inteiro nmr_aposta = 0
	inteiro saida = 0
	inteiro nmr_dezena = 0
	inteiro vetor[15]
	inteiro i = 0
	inteiro j = 0
	inteiro temp = 0

	logico repetido = falso

	funcao inicio()
	{
		script()
		apostas()
		preco()
	}
	
	funcao apostas(){
		se(nmr_aposta <= 6 e nmr_aposta >= 1){
			para(j = 0; j < nmr_aposta; j++){
				se(nmr_dezena >= 6 e nmr_dezena <= 15){
					megasena()
					ordenar()
					escreva("\n")
					resultado()
				}
			}
		}	
	}
	
	funcao megasena(){
		
		para(i = 0; i <= nmr_dezena; i++){
			faca{
				saida = u.sorteia(1, 60)
				repetido_mega()
			}enquanto(repetido)
			vetor[i] = saida
		}
		
		
	}
	
	funcao repetido_mega(){
		repetido = falso
		para(inteiro O = 0; O < nmr_dezena; O++){
 	
 			se(saida == vetor[O]){
 			repetido = verdadeiro
 			pare		
 			}
		}
	}

	funcao ordenar(){
		para(i = 0; i < nmr_dezena; i++){
			para(inteiro O = i + 1; O < nmr_dezena; O++){
				se(vetor[O] < vetor[i]){
					temp = vetor[i]	
					vetor[i] = vetor[O]
					vetor[O] = temp
				}
			}
		}	
	}

	funcao resultado(){
		para(inteiro i = 0; i < nmr_dezena; i++){
			escreva(vetor[i], " ")	
		}	
	}

	funcao preco(){
		se(nmr_dezena == 6){
			escreva("\nTeu preço total é: \n", 4.50 * nmr_aposta, " reais.")		
		}
		se(nmr_dezena == 7){
			escreva("\nTeu preço total é: \n", 31.50 * nmr_aposta, " reais.")		
		}
		se(nmr_dezena == 8){
			escreva("\nTeu preço total é: \n", 126 * nmr_aposta, " reais.")
		}
		se(nmr_dezena == 9){
			escreva("\nTeu preço total é: \n", 378 * nmr_aposta, " reais.")
		}
		se(nmr_dezena == 10){
			escreva("\nTeu preço total é: \n", 945 * nmr_aposta, " reais.")
		}
		se(nmr_dezena == 11){
			escreva("\nTeu preço total é: \n", 2079 * nmr_aposta, " reais.")
		}
		se(nmr_dezena == 12){
			escreva("\nTeu preço total é: \n", 4158 * nmr_aposta, " reais.")
		}
		se(nmr_dezena == 13){
			escreva("\nTeu preço total é: \n", 7722 * nmr_aposta, " reais.")
		}
		se(nmr_dezena == 14){
			escreva("\nTeu preço total é: \n", 13513.50 * nmr_aposta, " reais.")
		}
		se(nmr_dezena == 15){
			escreva("\nTeu preço total é: \n", 22522.50 * nmr_aposta, " reais.")
		}
	}

	funcao script(){
		escreva("Quantas apostas vai querer? Só pode até 6!\n")
		leia(nmr_aposta)
		
		enquanto(nmr_aposta < 1 ou nmr_aposta > 6) {
			escreva("Só pode ser entre 1 e 6, tente de novo \n ")
			leia(nmr_aposta)
		}
		
	 	escreva("\n Quantas decenas vai querer, escolha entre 6 e 15 \n ")
		leia(nmr_dezena)
		
		enquanto(nmr_dezena < 6 ou nmr_dezena > 15) {
			escreva("Só pode ser entre 6 e 15, tente de novo \n ")
			leia(nmr_dezena)
			
		}
	}
}
