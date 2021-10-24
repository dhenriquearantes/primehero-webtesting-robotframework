*** Settings ***

Documentation    Aqui estarão presentes todas as keywords dos testes web

Resource    ../package.robot
Resource    ../pages/pages_webautomation.robot


*** Keywords ***

#Caso de teste 01

Dado que o cliente esteja na página home do site Automation Practice                                                                  
    Title Should Be    My Store   
E digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Wait Until Element Is Visible                   ${TOP_MENU}
    Input Text                                      ${INPUT_PRODUTO}                  ${PRODUTO}
Quando clicar no botão pesquisar
    Click Element                                   ${PESQUISAR}
Então conferir se o produto "${PRODUTO}" foi listado no site
    Title Should Be                                 Search - My Store
    Page Should Contain Image                       ${BLOUSE}
    Wait Until Element Is Visible                   ${HOME_ICON}

#Caso de testes 02

Então conferir se a mensagem "No results were found for your search "${PRODUTO}"
    Title Should Be                  Search - My Store
    Page Should Contain Element                    xpath=//div[@id='center_column']//p[contains(text(), 'No results were found for your search')]
    Page Should Contain Element                    xpath=//p[contains(text(), '${PRODUTO}')]  

#Caso de teste 03

E passar o mouse por cima da categoria "${CATEGORIA}" no menu principal superior de categorias   
    Mouse Over                                      ${MOUSE_OVER}   
    Wait Until Element Is Visible                   ${SUBMENU} 
Quando clicar na sub categoria "${SUB_CATEGORY}"
    Click Element                                   xpath=//li/a[text()='${SUB_CATEGORY}']
    Wait Until Element Is Visible                   xpath=//span[@class='category-name'][contains(text(),'${SUB_CATEGORY}')]
Então conferir se os produtos da sub-categoria "${SUB_CATEGORY}" foram mostrados na página
    Page Should Contain Element                     xpath=//span[@class='category-name'][contains(text(),'${SUB_CATEGORY}')]
    Page Should Contain Element                     xpath=//ul[contains(@class, 'product_list')]
            
#Caso de teste 04

E clicar em "Sign in"    
    Click Element                                   ${LOGIN_TOP}
E informar um e-mail válido
    Input Text                                      ${ACCOUNT_CREATE.email_valid}         ${DADOS.email}
E clicar em "Create an account"
    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.button_create}
    Click Element                                   ${ACCOUNT_CREATE.button_create}
E preencher os dados obrigatórios
    #Seletor de Mr ou Mrs
    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.mr} 
    Click Element                                   ${ACCOUNT_CREATE.mr}  
    
    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.first_name}    
    Input Text                                      ${ACCOUNT_CREATE.first_name}          ${DADOS.first_name}
    
    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.last_name}
    Input Text                                      ${ACCOUNT_CREATE.last_name}           ${DADOS.last_name}
    
    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.password}
    Input Text                                      ${ACCOUNT_CREATE.password}            ${DADOS.Password} 
    
    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.day}
    Select From List By Value                       ${ACCOUNT_CREATE.day_select}          ${DADOS.day}

    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.month}
    Select From List By Value                       ${ACCOUNT_CREATE.month_select}        ${DADOS.month}

    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.year}
    Select From List By Value                       ${ACCOUNT_CREATE.year_select}         ${DADOS.year}     

    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.addres}
    Scroll Element Into View                        ${ACCOUNT_CREATE.addres}
    Input Text                                      ${ACCOUNT_CREATE.addres}              ${DADOS.address}

    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.city} 
    Scroll Element Into View                        ${ACCOUNT_CREATE.city}  
    Input Text                                      ${ACCOUNT_CREATE.city}               ${DADOS.city}

    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.state_2} 
    Scroll Element Into View                        ${ACCOUNT_CREATE.state_2} 
    Select From List By Value                       ${ACCOUNT_CREATE.state}             ${DADOS.state_sel}

    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.postcode} 
    Scroll Element Into View                        ${ACCOUNT_CREATE.postcode}
    Input Text                                      ${ACCOUNT_CREATE.postcode}            ${DADOS.postcode}

    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.phone}
    Scroll Element Into View                        ${ACCOUNT_CREATE.phone}
    Input Text                                      ${ACCOUNT_CREATE.phone}               ${DADOS.phone}
Quando submeter cadastro
    Wait Until Element Is Visible                   ${ACCOUNT_CREATE.button_register}
    Scroll Element Into View                        ${ACCOUNT_CREATE.button_register}
    Click Element                                   ${ACCOUNT_CREATE.button_register}
Então conferir se o cadastro foi efetuado com sucesso 
    Wait Until Element Is Visible                   ${TOP_MENU}
    Page Should Contain Element                     ${WELCOME_ACCOUNT}


#Sites para praticar:
#https://automacaocombatista.herokuapp.com/
#https://the-internet.herokuapp.com/

 