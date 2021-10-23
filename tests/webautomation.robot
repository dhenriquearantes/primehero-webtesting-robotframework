*** Settings ***
Documentation    Testes Web

Resource             ../resources/package.robot

Test Setup           Abrir navegador
Test Teardown        Fechar navegador

*** Test Cases ***

Caso de Teste 01: Pesquisar produto existente
    [Tags]    PESQUISAR
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site

Caso de Teste 02: Pesquisar produto não existente
    [Tags]    E
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Chinelo" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem "No results were found for your search "Chinelo"


Caso de Teste 03: Listar Produtos
    [Tags]    S
    Acessar a página home do site Automation Practice
    Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Clicar na sub categoria "Summer Dresses"
    Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página

Caso de Teste 04: Adicionar Cliente
    [Tags]    A
    Clicar em "Sign in"
    Informar um e-mail válido
    Clicar em "Create an account"
    Preencher os dados obrigatórios
    Submeter cadastro
    Conferir se o cadastro foi efetuado com sucesso