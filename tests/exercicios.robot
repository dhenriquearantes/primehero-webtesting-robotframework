*** Settings ***
Documentation     Neste arquivos estarão presente todos os exercicios de automação do curso prime hero
Resource          ../resources/package.robot

*** Variables ***
#Minha primeira variável do tipo dicionario
&{PESSOA}
...               nome=Divino Henrique
...               sobrenome=Arantes
...               idade=23 anos
...               cpf=12345678911
...               profissao=analista de testes
...               carro=Celta
@{FRUTAS}         Banana    Abacaxi    Limão    Goiaba

*** Test Cases ***
Cenario: Imprima 6 informações de uma pessoa
    Log To Console    ${PESSOA.nome}
    Log To Console    ${PESSOA.sobrenome}
    Log To Console    ${PESSOA.idade}
    Log To Console    ${PESSOA.cpf}
    Log To Console    ${PESSOA.profissao}
    Log To Console    ${PESSOA.carro}

Cenario: imprimindo uma lista de frutas
    [Tags]    LISTA
    Log To Console    ${FRUTAS}
    Log To Console    ${FRUTAS[0]}
    Log To Console    ${FRUTAS[3]}

Cenario: Somar dois numeros
    [Tags]    SOMAR
    Somar dois numeros    10    10
    ${RESULTADO}    Somar os numeros "65" e "70"
    Log To Console    ${RESULTADO}

Cenário 04: Criando E-mail
    [Tags]    EMAIL
    Criando E-mail    Divino    Henrique    23
    ${RESULTADO_EMAIL}    Criando E-mail    "Divino"    "Henrique"    "23"
    Log To Console    ${RESULTADO_EMAIL}

Cenario 05: Contar de 0 a 9
    [Tags]    CONTAR
    FOR    ${COUNT}    IN RANGE    0    9
        Log To Console    ${COUNT}
    END

Cenario 06: Percorrer itens de uma lista
    [Tags]    FRUTAS
    Criar lista de frutas

Imprima estou no numeros
    [Tags]    NUMERO
    numero 0 a 10

Imprima 5 nomes de paises
    [Tags]    PAISES
    Criar lista de paises

numero 0 a 10 correto
    numero 0 a 10 correto
    [Tags]    CONTAR

*** Keywords ***
Somar dois numeros
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${SOMA}    Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}

Somar os numeros "${NUM_A}" e "${NUM_B}"
    ${SOMA}    Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}

Criando E-mail
    [Arguments]    ${NOME}    ${SOBRENOME}    ${IDADE}
    ${RESULTADO_EMAIL}    Catenate    ${NOME}_${SOBRENOME}_${IDADE}@robot.com
    Log To Console    ${RESULTADO_EMAIL}

Criar lista de frutas
    @{FRUTAS}    Create List    morango    banana    maça
    FOR    ${FRUTA}    IN    @{FRUTAS}
        Log To Console    ${FRUTA}
    END

numero 0 a 10
    FOR    ${COUNT}    IN RANGE    0    10
        Log To Console    ${COUNT}
    END

Criar lista de paises
    @{PAISES}    Create List    brasil    chile    uruguai    meximo    peru
    FOR    ${PAISES}    IN    @{PAISES}
        Log To Console    ${PAISES}
    END

numero 0 a 10 correto
    FOR    ${COUNT}    IN RANGE    0    10
        IF    ${COUNT} == 5
            Log To Console    Estou no numero ${COUNT}
        ELSE IF    ${COUNT} == 8
            Log To Console    Estou no numero ${COUNT}
        END
    END
