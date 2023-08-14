*** Settings ***
Documentation  Criando um Loop para contar números pares.

*** Keywords ***
Contar Numeros Pares Entre 0 e 10
    ${count} =  Set Variable  0
    FOR  ${num}  IN RANGE  11
        ${is_even} =  Evaluate  ${num} % 2 == 0
        ${count} =  Evaluate  ${count} + ${is_even}
    END
    [Return]  ${count}

*** Test Cases ***
Contar Numeros Pares
    ${count} =  Contar Numeros Pares Entre 0 e 10
    Log to console  O total de números pares entre 0 e 10 é: ${count}


