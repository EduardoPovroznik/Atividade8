programa
{
	inclua biblioteca Util
 --> u

	inteiro nmr_aposta = 1
	inteiro saida = 0
	inteiro nmr_dezena = 50
	inteiro vetor[100]
	inteiro i = 0
	inteiro j = 0
	inteiro temp = 0
	
	cadeia resposta = "a"
	
	logico repetido = falso

	funcao inicio()
	{
		script()
		
		se(resposta == "S" ou resposta == "s"){
			apostas()
			preco()
		}senao
		escreva("Operação cancelada")
	}
	
	funcao apostas(){
		se(nmr_aposta == 1){
			para(j = 0; j < nmr_aposta; j++){
				se(nmr_dezena == 50){
					lotomania()
					ordenar()
					escreva("\n")
					resultado()
				}
			}
		}	
	}
	
	funcao lotomania(){
		
		para(i = 0; i <= nmr_dezena; i++){
			faca{
				saida = u.sorteia(0, 99)
				repetido_loto()
			}enquanto(repetido)
			vetor[i] = saida
		}
		
		
	}
	
	funcao repetido_loto(){
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
		se(nmr_dezena == 50){
			escreva("\nTeu preço total é: \n", 2.50 , " reais.")		
		}
	}

	funcao script(){
		escreva("Deseja apostar na Lotomania? (Aposta única!) [S/N] \n")
		leia(resposta)
	}
}
