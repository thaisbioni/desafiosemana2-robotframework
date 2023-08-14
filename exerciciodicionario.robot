*** Settings ***
Documentation  Criando um dicionário que exibe a lista no console.

*** Variables ***
&{dict}  nome=Thais Barboza Bioni  idade=33  rua=Rua A  numero=123  cep=01234-567  cidade=são paulo  estado=SP 

*** Test Cases ***
Exibir Dicionário no Console
    Log To Console   ${dict}
