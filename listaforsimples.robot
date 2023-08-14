*** Settings ***
Documentation   Criando uma lista + For Simples.

*** Variables ***
@{lista_de_frutas}    Maçã    Melancia    Mamão    Banana    Morango    Tangerina   Laranja   Abacaxi  

*** Keywords ***
...    ${lista_de_frutas} [0] Maça
...    ${lista_de_frutas} [1] Melancia
...    ${lista_de_frutas} [2] Mamão
...    ${lista_de_frutas} [3] Banana
...    ${lista_de_frutas} [4] Morango
...    ${lista_de_frutas} [5] Tangerina
...    ${lista_de_frutas} [6] Laranja
...    ${lista_de_frutas} [7] Abacaxi
  
*** Test Cases ***
Exibir Frutas Usando For
    FOR    ${fruta}    IN    @{lista_de_frutas}
        Log to console    A fruta é: ${fruta}
    END
