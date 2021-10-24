*** Settings ***
Documentation    Testes Web

Resource             ../resources/package.robot

Test Setup           Abrir navegador
Test Teardown        Fechar navegador

*** Test Cases ***

Caso de Teste 01: Pesquisar produto existente
    [Tags]    PESQUISAR_E
    Dado que o cliente esteja na página home do site Automation Practice
    E digitar o nome do produto "blouse" no campo de pesquisa
    Quando clicar no botão pesquisar
    Então conferir se o produto "Blouse" foi listado no site

Caso de Teste 02: Pesquisar produto não existente
    [Tags]    PESQUISAR_N
    E digitar o nome do produto "Chinelo" no campo de pesquisa
    Quando clicar no botão pesquisar
    Então conferir se a mensagem "No results were found for your search "Chinelo"


Caso de Teste 03: Listar Produtos
    [Tags]    LISTAR
    E passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Quando clicar na sub categoria "Summer Dresses"
    Então conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página

Caso de Teste 04: Adicionar Cliente
    [Tags]    CREATE
    E clicar em "Sign in"
    E informar um e-mail válido
    E clicar em "Create an account"
    E preencher os dados obrigatórios
    Quando submeter cadastro
    Então conferir se o cadastro foi efetuado com sucesso