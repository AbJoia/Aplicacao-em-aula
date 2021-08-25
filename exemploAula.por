programa
{
	inclua biblioteca Util
	
	inteiro contador = 0
	cadeia nomes[5]
	
	funcao inicio()
	{
		inteiro opcao, numero, resultado
		escreva("1. Calcular Fatorial\n")
		escreva("2. Imprimir números naturais\n")
		escreva("3. Imprimir números naturais versão Igor\n")
		escreva("4. Registrar nomes\n")
		escreva("5. Pesquisar registro\n")			
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
				escreva("Digite um nome: ")
				leia(numero)
				escreva(imprimirNumerosNaturaisIgor(numero))
				pare
			caso 4:
				registrarNomes()
				pare
			caso 5:
				escreva("Digite a posição do vetor: \n")
				leia(numero)				
				pesquisarRegistro(numero)
				pare
			caso contrario:
				escreva("Opção invalida")
		}		
		
		Util.aguarde(3000)
		limpa()
		inicio()
		
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

	funcao registrarNomes(){
		escreva("#####Registro de Nomes######\n")
		para(inteiro indice = 0; indice < Util.numero_elementos(nomes); indice++){
			escreva("Nome ", indice + 1, ": ")
			leia(nomes[indice])
		}
	}

	funcao pesquisarRegistro(inteiro posicao){
		escreva("O registro na posição ", posicao, " é : ", nomes[posicao])
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */