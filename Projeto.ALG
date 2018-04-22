Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Aldo Henrique
// Descrição   : Projeto
// Autor(a)    : Guilherme Peixoto
// Data atual  : 14/04/2018
Var
   // Seção de Declarações das variáveis
   op:inteiro //aqui é a opção da pessoa, de 1 até 7
   //questão 1,2 e 3:
   num1,num2:inteiro //os dois números digitados pelo usuário
   sub,soma:inteiro //a soma ou a subtração dos dois números
   divi:real // a divisão dos dois números
   //questão4:
   pessoa:inteiro //o número de pessoas que será contado
   ContP:inteiro  //serve para armazenar o número de pessoas, já que irá ser diminuido até ter 0, e precisará desse número para fazer a média
   idade:inteiro  //idade digitada
   Cont_idade:inteiro //idade total de todas as pessoas(independente do sexo) feito para fazer a média
   idadeF,ContF:inteiro // a idade do povo do sexo feminino, e a idade total de todos do sexo feminino
   idadeM,ContM:inteiro // a idade do povo do sexo masculino, e a idade total de todos do sexo masculino
   media,MediaF,MediaM:real //todas as médias, tanto do sexo feminino, quanto do masculino, quanto o total
   sexo:caracter //o sexo de cada pessoa
   //questão 5
   num:inteiro  //número digitado pelo usuário
   cont:inteiro //quantas vezes ele foi mod=0, para verificar se é primo
   k,l:inteiro  //servem de contadores, para o "para" entrar em loop
   somaP:inteiro //soma dos números primos
   //Questão 6 parte 1(funcionamento do programa, repita etc):
   casos:inteiro //quantas vezes ele irá usar
   opcao:caracter//Se ele deseja transformar de binário para decimal, ou decimal para binário
   Limp_tela:caracter //apenas visual
   //Questão 6 parte 2(de decimal para binário):
   binario:caracter //Binário tem que ser feito como caracter, porque se for inteiro, ou real, ele irá somar os números
   binario1 : caracter //No meu codigo, sem essa parte, ele buga, e soma os números binários
   numero_inteiro:inteiro //aqui será o número dado pelo usuário
   Copia_num_int: inteiro// aqui servirá para informar ao usuário qual foi o número que ele digitou
   //Questão 6 parte 3(de binário para decimal):
   bin:vetor[1..8] de inteiro // usei vetor aqui, para n gerar muitos números
   j:inteiro // isso daqui funcionará como um contador para utilizar repetição
   a,b,c,d,f,g,h,i:inteiro //isso daqui foi usado como valores do calculo binário, de acordo com a sequencia que ele está
   b1,b2,b3,b4,b5,b6,b7,b8:inteiro //Essa parte daqui, não é muito precisa estar aqui, ela é somente utlilizada para o usuário ver quais os números ele digitou
   decimal:inteiro //aqui entrará o número final
Inicio
   op<-0
   enquanto op<>7 faca
      // Seção de Comandos, procedimento, funções, operadores, etc...
      escreval("Escolha uma opção")//aqui o usuário irá informar uma opção
      escreval("1- Soma ") //opção 1, irá executar a soma de dois números
      escreval("2- subtração")//opção 2, irá executar a subtração de dois numeros
      escreval("3- divisão")//opção 3, irá executar a divisão de dois números
      escreval("4- Faixa Etária")//opção 4 irá mostrar a média da idade de quantas pessoas ele informar
      escreval("5- Números primos")//opção 5, irá mostrar os números proximos de 1 até o que ele digitou
      escreval("6- Mudança de Base")//opção 6, o usuário irá falar quantas vezes ele irá querer trocar a base, e será dado um número em binário ou em decimal, e o programa, irá transformar de um para outro
      escreval("7- Sair")//opção 7 fecha o programa
      leia (Op)
      se (op=1) entao //aqui será somado dois números
         escreval("Digite os números a ser somados") //o usuário irá informar os números que ele deseja somar
         leia(num1,num2)
         soma<-num1+num2
         limpatela
         escreval("A resposta da Soma é:",soma)//aqui mostrará o resultado
      senao
         se (op=2) entao //aqui será subtraido dois números
            escreval("Digite os números a ser subtraido") //aqui o usuário irá informar os números que ele quer subtrair
            leia(num1,num2)
            sub<-num1-num2
            limpatela
            escreval("O resultado da subtração é",sub)//aqui mostrará o resultado da subtração
         senao
            se (op=3) entao//aqui será dividido dois números
               escreval("Digite os números a ser divididos")//o usuário irá informar os números que serão divididos
               leia(num1,num2)
               divi<-(num1/num2)
               limpatela
               escreval("O resultado da divisão é",divi)//aqui mostrará o resultado da divisão
            senao
               se (op=4) entao
                  escreval("Quantas pessoas você quer calcular a média") //aqui o usuário informa o número de pessoas que ele quer calcular a média
                  leia(pessoa)
                  ContP<-pessoa
                  repita
                     escreval("Digite a idade") //aqui o usuário informa a idade da pessoa
                     leia(idade)
                     Cont_idade<-idade+Cont_idade //aqui vai para a conta total da idade das pessoas
                     escreval("Digite o sexo")    //aqui o usuário informa o sexo do usuário
                     escreval("M-Masculino")
                     escreval("F-Feminino")
                     leia(sexo)
                     //aqui se o sexo da pessoa for masculino, ela irá ser contada, para verificar a média da idade das pessoas do sexo masculino
                     se (sexo="M") entao
                        IdadeM<-Idade+IdadeM
                        ContM<-ContM+1
                        MediaM<-IdadeM/ContM
                     senao
                        //aqui se o sexo da pessoa for feminino, ela irá ser contada, para verificar a média da idade das pessoas do sexo feminino
                        se (sexo="F") entao
                           idadeF<-idade+IdadeF
                           ContF<-contF+1
                           MediaF<-IdadeF/ContF
                        senao
                           //isso é mais para visual do programa, se a pessoa digitar algum sexo diferente de masculino, ou feminino, irá aparecer na tela, para ele digitar novamente outro sexo
                           //mesmos códigos atrás
                           se ((sexo<>"M") e (sexo<>"F")) entao
                              repita
                                 escreval("Informe novamente o sexo")
                                 escreval("M-Masculino")
                                 escreval("F-Feminino")
                                 leia(sexo)
                                 se (sexo="m") entao
                                    IdadeM<-Idade+IdadeM
                                    ContM<-ContM+1
                                    MediaM<-IdadeM/ContM
                                 senao
                                    se (sexo="f") entao
                                       idadeF<-idade+IdadeF
                                       ContF<-contF+1
                                       MediaF<-IdadeF/ContF
                                    fimse
                                 fimse
                              ate ((sexo="F") ou (sexo="M"))//só irá parar de aparecer a mensagem, quando o usuário, digitar um sexo que seja Masculino, ou Feminino
                           fimse
                        fimse
                     fimse
                     Pessoa<- Pessoa-1 //isso serve de contador, para o programa executar, até acabar o número de pessoas
                     limpatela //para evitar poluição na tela
                  ate (pessoa=0)
                  Media<-Cont_idade/ContP
                  limpatela
                  se (mediaF=0) entao //isso serve além de como visual, mas também serve para o programa não fechar caso não tenha pessoas de um sexo, pois o programa trava quando voce divide algum número com zero
                     escreval("Não possui pessoas do sexo feminino")
                  senao
                     escreval("A média das idades femininas é",mediaF) //aqui o programa informará a média da idade das pessoas do sexo feminino
                  fimse
                  escreval("A média das idades é:",media)
                  se (mediaM=0) entao //o mesmo serve do sexo femino, serve para aqui.
                     escreval("Não possui pessoas do sexo masculino")
                  senao
                     escreval("A média das idades masculinas é",mediaM)  //aqui o programa informará a média da idade das pessoas do sexo masculino
                  fimse
               fimse
               se (op=5) entao
                  // Seção de Comandos, procedimento, funções, operadores, etc...
                  escreval("Informe até qual valor voce quer procurar números primos")  //aqui o usuário informa até qual número ele quer procurar os números primos
                  leia(num)
                  para k de 1 ate num faca //aqui ele é feito para criar um loop e zerar o contador(QTD_mod) e o cont1
                     cont<-0  //coloca aqui fora do proximo loop, para ele zerar sempre que for verificado se o número é primo
                     para l de 1 ate k faca //aqui é verificado se o número é primo ou não
                        se (k mod l = 0) entao
                           Cont:=Cont+1
                           //cada vez que o número for mod=0(não há resto) é somado, e depois é verificado quantas vezes ele foi mod0
                        fimse
                     fimpara
                     se (Cont=2) entao //aqui é visto quantas vezes ele foi mod 0, pois, se ele foi mod0, significa q só foi por ele mesmo, e por 1.
                        somaP<-k+somaP//aqui fica a soma dos números primos
                     fimse
                  fimpara
                  limpatela
                  escreval("A soma de todos os números primos é:",somaP)//aqui é colocado na tela a soma dos números primos
               senao
                  se op=6 entao
                     escreval("Informe quantos casos você quer fazer")
                     leia(casos)
                     se casos<=0 entao
                        repita
                           escreval("Informe um número de casos correto que seja maior que zero")
                           leia(casos)
                        ate casos>0
                     fimse
                     repita
                        escreval("Qual operação deseja fazer?")
                        escreval("D Para transformar de decimal para Binario")
                        escreval("B para transformar de binário para decimal")
                        leia(opcao)
                        se (opcao="D") entao
                           escreval("escreva um número inteiro")
                           leia(Numero_inteiro)
                           Copia_num_int <- Numero_inteiro //o número inteiro, será dividido, entao coloquei uma outra váriavel para pegar o número dele, e não ficar 0 no final
                           repita   //ele irá repetir até que o número que está sendo dividido, seja igual a 0
                              //aqui ele não irá somar o 0 e 1, porque a variavel está como caracter
                              //ele irá colocar 0 ou 1 pra cada divisão, e irá escrever em cima
                              se (numero_inteiro mod 2) = 0 entao
                                 binario <- "0" + binario
                              senao
                                 binario <- "1" + binario
                              fimse
                              Numero_inteiro <- Numero_inteiro div 2
                           ate Numero_inteiro=0
                           limpatela
                           escreval("O número inteiro:",Copia_num_int, " vira ",binario, " em binário")
                        fimse
                        binario<-binario1
                        se (opcao="B") entao
                           a<-1   //aqui é a primeira linha do calculo binário
                           b<-2   //aqui é a segunda linha do calculo binário
                           c<-4   //aqui é a terceira linha do calculo binário
                           d<-8   //aqui é a quarta linha do calculo binário
                           f<-16  //aqui é a quinta linha do calculo binário
                           g<-32  //aqui é a sexta linha  do calculo binário
                           h<-64  //aqui é a setima linha do calculo binário
                           i<-128 //aqui é a oitava linha do calculo binário
                           para j de 1 ate 8 passo 1 faca
                              escreval("digite o bit, (você está na sequencia",j," de 8)") //aqui o usuário digitará os números binarios, com o programa falando para ele em qual linha ele está
                              leia(bin[j])
                              se (bin[j]<>0) e (bin[j]<>1) entao //aqui, eu coloquei isso, porque um número binário não pode ser diferente de 0 ou 1, então o programa pedirá para ele escrever outro número
                                 repita //ele irá repetir o "digite novamente..." até q ele digite 0 ou 1
                                    escreval("digite novamente outro número")
                                    leia(bin[j]) //aqui ele lerá o número como se fosse lá em cima normalmente, assim o usuário não sairá prejudicado
                                 ate (bin[j]=0) ou (bin[j]=1)
                              fimse
                              //não precisei colocar um caso se o usuário digitar 0, porque ele funciona sem isso de qualquer jeito, porque o programa não aceita outro número que não seja 0, e se ele não digitar 1, é 0, entao o programa já não faz nada
                              //explicando um, será explicado o de todos, então...
                              //da forma que eu fiz, ele irá anotar o número naquela linha, então será multiplicado os números da regra binária feita lá em cima, com base na sequencia que ele está
                              //e esses b(1 até 8) serve para armazenar o número que foi digitado, para deixar mais facil a vizualização final
                              se (bin[1]=1) entao
                                 b1<-bin[1]
                                 bin[1]<-bin[1]*a
                              fimse
                              se (bin[2]=1) entao
                                 b2<-bin[2]
                                 bin[2]<-bin[2]*b
                              fimse
                              se (bin[3]=1) entao
                                 b3<-bin[3]
                                 bin[3]<-bin[3]*c
                              fimse
                              se (bin[4]=1) entao
                                 b4<-bin[4]
                                 bin[4]<-bin[4]*d
                              fimse
                              se (bin[5]=1) entao
                                 b5<-bin[5]
                                 bin[5]<-bin[5]*f
                              fimse
                              se (bin[6]=1) entao
                                 b6<-bin[6]
                                 bin[6]<-bin[6]*g
                              fimse
                              se (bin[7]=1) entao
                                 b7<-bin[7]
                                 bin[7]<-bin[7]*h
                              fimse
                              se (bin[8]=1) entao
                                 b8<-bin[8]
                                 bin[8]<-bin[8]*i
                              fimse
                           fimpara
                           decimal<-bin[1]+bin[2]+bin[3]+bin[4]+bin[5]+bin[6]+bin[7]+bin[8]//aqui é utilizado o calculo, para saber o número binário
                           limpatela
                           escreva("o número em binário",b1,b2,b3,b4,b5,b6,b7,b8)//aqui informa o número que o usuário informou em binário
                           escreva(" vira",decimal," em decimal") //e aqui informa o resultado em decimal
                           escreval() //apenas para pular linha
                        fimse
                        casos:=casos-1  //para ir diminuindo o número de casos, até finalizar com 0
                     ate (casos=0)
                  senao
                     se op=7 entao
                        escreval("Finalizando")
                     senao
                        se ((op>7) ou (op<=0)) entao
                           limpatela
                           escreval("Opção inválida")
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
      //Eu fiz isso daqui, porque senão a questão 4 buga se vc entrar nela mais de uma vez, e fica somando a média a cada vez que voce faz ela novamente
      //E isso daqui não funcionava nem no começo do repita, nem quando o usuário entrava na opção 4
      cont_idade<-0
      MediaM<-0
      MediaF<-0
      SomaP<-0
   fimenquanto
Fimalgoritmo