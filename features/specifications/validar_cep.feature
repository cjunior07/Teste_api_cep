#language: pt

@Validar_CEP
Funcionalidade: Validar CEP

  @Buscar_cep_valido
  Cenario: Buscar CEP Valido
    Dado que faco uma busca pelo CEP "72885500"
    Entao valido o codigo "200" 
    E o campo IBGE com "5205497"

  @Buscar_cep_invalido
  Cenario: Buscar CEP invalido
    Dado que faco uma busca pelo CEP "11111111"
    Entao valido o retorno de erro
  

  @Buscar_cep_branco
  Cenario: Buscar CEP Branco
    Dado que faco uma busca pelo CEP ""
    Entao valido o codigo "400" 

 