programa
{
	inteiro contador = 0
	
	funcao inicio()
	{
		inteiro opcao, numero, resultado
		escreva("1. Calcular Fatorial\n")
		escreva("2. Imprimir números naturais\n")
		escreva("3. Imprimir números naturais versão Igor\n")		
		leia(opcao)

		escolha(opcao){
			caso 1:
				escreva("Digite um número: ")				
				leia(numero)
				resultado = calcularFatorial(numero)
				escreva(resultado)
				pare
			caso 2:
				escreva("Digite um número: ")
				leia(numero)
				escreva(imprimirNumerosNaturais(numero, 0))
				pare
			caso 3:
				escreva("Digite um número: ")
				leia(numero)
				escreva(imprimirNumerosNaturaisIgor(numero))
				pare
			caso contrario:
				escreva("Opção invalida")
		}
		
	}
									
	funcao inteiro calcularFatorial(inteiro numero){
		se(numero == 0){
			retorne 1
		}
										
		retorne numero * calcularFatorial(numero - 1)
	}

	funcao cadeia imprimirNumerosNaturais(inteiro numero, inteiro digito){
		se(digito == numero){
			retorne "" + digito
		}

		retorne digito + " " + imprimirNumerosNaturais(numero, digito + 1)
	}

	funcao cadeia imprimirNumerosNaturaisIgor(inteiro numero){
		cadeia textoNumeros = ""
		para(contador; contador < numero; contador++){
			textoNumeros = textoNumeros + " " + naturais(contador)
		}

		retorne textoNumeros
	}

	funcao inteiro naturais(inteiro numero){
		se(numero < 0){
			retorne 0		
		}
				
		retorne naturais(numero - 1) + 1
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 643; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {resultado, 7, 25, 9}-{numero, 36, 41, 6}-{numero, 61, 33, 6}-{textoNumeros, 53, 9, 12};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */