*** Settings ***
Documentation    Aqui estarão presentes todas as keywords dos testes web

Resource    ../package.robot


*** Keywords ***

#Caso de teste 01

Acessar a página home do site Automation Practice                                                                  
    Title Should Be    My Store   
Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Wait Until Element Is Visible                   ${TOP_MENU}
    Input Text                                      ${INPUT_PRODUTO}                  ${PRODUTO}
Clicar no botão pesquisar
    Click Element                                   ${PESQUISAR}
Conferir se o produto "${PRODUTO}" foi listado no site
    Title Should Be                                 Search - My Store
    Page Should Contain Image                       xpath=//img[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
    Wait Until Element Is Visible                   ${HOME_ICON}

#Caso de testes 02

Conferir mensagem "No results were found for your search "${PRODUTO}"
    Title Should Be                  Search - My Store
    Page Should Contain Element      xpath=//div[@id='center_column']//p[contains(text(), 'No results were found for your search')] 
    Page Should Contain Element      xpath=//p[contains(text(), '${PRODUTO}')]

#Caso de teste 03

Passar o mouse por cima da categoria "${CATEGORIA}" no menu principal superior de categorias   
    Mouse Over        ${MOUSE_OVER}   
    Wait Until Element Is Visible    xpath=//ul[@class='submenu-container clearfix first-in-line-xs']  
Clicar na sub categoria "${SUB_CATEGORIA}"
    Click Element                    xpath=//li/a[text()='${SUB_CATEGORIA}']
    Wait Until Element Is Visible    xpath=//span[@class='category-name'][contains(text(),'${SUB_CATEGORIA}')]
Conferir se os produtos da sub-categoria "${SUB_CATEGORIA}" foram mostrados na página
    Page Should Contain Element      xpath=//span[@class='category-name'][contains(text(),'${SUB_CATEGORIA}')]
    Page Should Contain Element      xpath=//ul[contains(@class, 'product_list')]
            
#Caso de teste 04

Clicar em "Sign in"    
    Click Element                                   ${LOGIN_TOP}
Informar um e-mail válido
    Input Text                                      ${EMAL_VALID}         ${DADOS.email}
Clicar em "Create an account"
    Wait Until Element Is Visible                   ${CONTA_CREATE}
    Click Element                                   ${CONTA_CREATE}
Preencher os dados obrigatórios
    #Seletor de Mr ou Mrs
    Wait Until Element Is Visible                   ${MR} 
    Click Element                                   ${MR} 
    
    #Nome e Sobrenome
    Wait Until Element Is Visible                   ${FISRT_NAME}    
    Input Text                                      ${FISRT_NAME}          ${DADOS.first_name}
    
    Wait Until Element Is Visible                   ${LAST_NAME}
    Input Text                                      ${LAST_NAME}           ${DADOS.last_name}
    
    #Senha
    Wait Until Element Is Visible                   ${PASSWORD}
    Input Text                                      ${PASSWORD}            ${DADOS.Passeword} 
    
    #Data de nascimento
    Wait Until Element Is Visible                   ${DAY}
    Select From List By Value                       ${DAY_SELECT}          ${DADOS.day}
    Wait Until Element Is Visible                   ${MONTH}
    Select From List By Value                       ${MONTH_SELECT}        ${DADOS.month}
    Wait Until Element Is Visible                   ${YEAR}
    Select From List By Value                       ${YEAR_SELECT}         ${DADOS.year}     

    #Endereço
    Wait Until Element Is Visible                   ${ADDRESS}
    Scroll Element Into View                        ${ADDRESS}
    Input Text                                      ${ADDRESS}             ${DADOS.address}
    Wait Until Element Is Visible                   ${CITY}
    Scroll Element Into View                        ${CITY}
    Input Text                                      ${CITY}                ${DADOS.city}
    Wait Until Element Is Visible                   ${STATE_2}
    Scroll Element Into View                        ${STATE_2}
    Select From List By Value                       ${STATE}               ${DADOS.state_sel}
    Wait Until Element Is Visible                   ${POSTCODE}
    Scroll Element Into View                        ${POSTCODE}
    Input Text                                      ${POSTCODE}            ${DADOS.zipcode}
    Wait Until Element Is Visible                   ${PHONE}
    Scroll Element Into View                        ${PHONE}
    Input Text                                      ${PHONE}               ${DADOS.phone}
Submeter cadastro
    Wait Until Element Is Visible                   ${REGISTER}
    Scroll Element Into View                        ${REGISTER}
    Click Element                                   ${REGISTER}
Conferir se o cadastro foi efetuado com sucesso 
    Wait Until Element Is Visible                   ${TOP_MENU}
    Page Should Contain Element      xpath=//div[@id='center_column']//p[contains(text(), 'Welcome to your account. Here you can manage all of your personal information and orders.')]


#Sites para praticar:
#https://automacaocombatista.herokuapp.com/
#https://the-internet.herokuapp.com/

 