*** Settings ***
Documentation    Variáveis da pagina

*** Variables ***
#Variáveis gerais
${BROWSER}             chrome
${URL}                 http://automationpractice.com/index.php
${LOGO_HOME}           xpath=//img[@src='http://automationpractice.com/img/logo.jpg']
${HOME_ICON}           xpath=//i[contains(@class,'icon-home')]
${TOP_MENU}            xpath=//*[@id="block_top_menu"]/ul
${INPUT_PRODUTO}       id=search_query_top
${ALERTA}              xpath=//*[@class="alert alert-warning"]
${MOUSE_OVER}          xpath=//*[@class="sf-with-ul"]
${PESQUISAR}           name=submit_search           
#LOGIN NA BARRA DO TOPO
${LOGIN_TOP}           xpath=//*[@class="login"]
#EMAIL VALIDO
${EMAL_VALID}          xpath=//*[@id="email_create"]
#CRIAR CONTA
${CONTA_CREATE}        xpath=//*[@id="SubmitCreate"]
#SELETOR DE GENERO
${MR}                  xpath=//*[@id="id_gender1"]
#NOME E SOBRENOME
${FISRT_NAME}          xpath=//*[@id="customer_firstname"] 
${LAST_NAME}           xpath=//*[@id="customer_lastname"]
#SENHA
${PASSWORD}            xpath=//*[@id="passwd"]
#SELETOR DE D/M/A
${DAY}                 xpath=//*[@id='uniform-days']
${DAY_SELECT}          xpath=//*[@id='uniform-days']/select
${MONTH}               xpath=//*[@id='uniform-months']
${MONTH_SELECT}        xpath=//*[@id='uniform-months']/select
${YEAR}                xpath= //*[@id='uniform-years']
${YEAR_SELECT}         xpath=//*[@id='uniform-years']/select
#ENDEREÇO
${ADDRESS}             xpath=//*[@id='address1']
${CITY}                xpath=//*[@id='city']
${STATE}               xpath=//*[@id = 'id_state' and @name = 'id_state']
${STATE_2}             xpath=//*[@id='uniform-id_state']
${POSTCODE}            xpath=//*[@id='postcode']
${PHONE}               xpath=//*[@id='phone_mobile']
${REGISTER}            xpath=//button[@id='submitAccount']
#Lista de dados
&{DADOS}         
...                    first_name=Divino Henrique     
...                    last_name=Arantes             
...                    Passeword=12345        
...                    email=dharantsees@gmail.com 
...                    address=Rua dos bobos, N.0
...                    city=Goiania
...                    zipcode=00000
...                    phone=00000000000
...                    day=6
...                    month=8
...                    year=1998
...                    state_sel=8
...                    state=California
