algoritmo  "Agência de Viagens"
// Cadastro Agencia De viagem - Recode Pro
// João Vitor carvalho Lima.
var
   clientes_nomes: vetor[0..4] de caractere
   clientes_cpf: vetor[0..4] de inteiro
   clientes_destino: vetor[0..4] de caractere
   opcao, nome_cliente: caractere
   indice_i, indice_j, contador: inteiro

procedimento inicializa()
inicio
   enquanto opcao <> "3" faca
      escreval("--------------- Tela de  Cadastro -------------")
      escreval("-- Cadastro de clientes | Agência de Viagens --")
      escreval()
      escreval("--------------------- MENU --------------------")
      escreval()
      escreval("(1) CADASTRAR CLIENTE")
      escreval("(2) PESQUISAR CLIENTE")
      escreval("(3) SAIR")
      escreval()
      escreva("Opção: ")
      leia(opcao)
      se opcao = "1" entao
         limpatela
         se contador = 10 entao
            escreval("Esgotou o limite de cadastros/vagas!")
         senao
            cadastrar_cliente()
         fimse
      fimse
      se opcao = "2" entao
         limpatela
         buscar_cliente()
      fimse
      se opcao = "3" entao
         para indice_i de 0 ate 4 faca
            clientes_nomes[indice_i] <- "x"
         fimpara
         limpatela
         escreval("               FINALIZADO                  ")
      fimse
   fimenquanto
fimprocedimento

procedimento cadastrar_cliente()
inicio
   para indice_i de 0 ate 4 faca
      se (clientes_nomes[indice_i] = "") entao
         escreval("DIGITE OS DADOS DO CLIENTE")
         escreval()
         escreva("-> Nome: ")
         leia(clientes_nomes[indice_i])
         escreva("-> CPF -(SOMENTE NÚMEROS): ")
         leia(clientes_cpf[indice_i])
         escreva("-> Destino: ")
         leia(clientes_destino[indice_i])
         escreval()
         voltar_menu()
         contador <- contador + 1
         limpatela
      fimse
   fimpara
   escreval(" -> Esgotou o limite de cadastros/vagas! <-")
   escreval()
fimprocedimento
procedimento voltar_menu()
inicio
   escreva("Voltar para o menu ? (s/n - letra minúscula)? ")
   leia(opcao)

   se opcao = "s" entao
      indice_i <- indice_i + 1
      limpatela
      inicializa()
   senao
      limpatela
      cadastrar_cliente()
   fimse
fimprocedimento
procedimento buscar_cliente()
inicio
   indice_j <- 0
   escreval("PARA BUSCAR UM CADASTRO...")
   escreval()
   escreva("Informe o nome do(a) cliente: ")
   leia(nome_cliente)
   escreval()
   para indice_i de 0 ate 4 faca
      se (nome_cliente = clientes_nomes[indice_i]) entao
         escreval("-> Nome: ", clientes_nomes[indice_i])
         escreval("-> CPF: ", clientes_cpf[indice_i])
         escreval("-> Destino: ", clientes_destino[indice_i])
         escreval()
         indice_j <- indice_j + 1
      fimse
   fimpara
   se (indice_j = 0) entao
      escreval("Cliente não cadastrado!")
      escreval()
   fimse
   Voltar_menu2()
   limpatela
fimprocedimento
procedimento voltar_menu2()
inicio
   Escreva("Retornar para o Menu ? (s/n - letra minúscula)? ")
   leia(opcao)

   se opcao = "s" entao
      limpatela
      inicializa()
   senao
      limpatela
      buscar_cliente()
   fimse
fimprocedimento
inicio
   inicializa()
fimalgoritmo