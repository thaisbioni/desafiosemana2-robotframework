*** Settings ***
Library    DateTime
Documentation  Criando um Teste com Argumentos e Retornos.

*** Keywords ***
Calcular Ano de Nascimento
    [Arguments]    ${idade}
    ${ano_atual}=    Evaluate    datetime.datetime.now().year    datetime
    ${ano_nascimento}=    Evaluate    ${ano_atual} - ${idade}
    [Return]    ${ano_nascimento}

*** Test Cases ***
Calculando Ano de Nascimento
    ${ano_nascimento}=    Calcular Ano de Nascimento    33
    Log    O ano de nascimento é: ${ano_nascimento}
    Run Keyword If    ${ano_nascimento} < 2000
    ...    Log to console   Que legal! Você nasceu no século passado :D 