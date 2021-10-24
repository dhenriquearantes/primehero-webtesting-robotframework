*** Settings ***

Documentation    Variáveis da pagina

*** Variables ***
${LOGO_HOME}                   xpath=//img[@src='http://automationpractice.com/img/logo.jpg']
${HOME_ICON}                   xpath=//i[contains(@class,'icon-home')]
${TOP_MENU}                    xpath=//*[@id="block_top_menu"]/ul
${INPUT_PRODUTO}               id=search_query_top
${ALERTA}                      xpath=//*[@class="alert alert-warning"]
${PESQUISAR}                   name=submit_search           
${LOGIN_TOP}                   xpath=//*[@class="login"]
${SUBMENU}                     xpath=//ul[@class='submenu-container clearfix first-in-line-xs']
${BLOUSE}                      xpath=//img[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
${MOUSE_OVER}                  xpath=//*[@class="sf-with-ul"]
${WELCOME_ACCOUNT}             xpath=//div[@id='center_column']//p[contains(text(), 'Welcome to your account. Here you can manage all of your personal information and orders.')]

&{ACCOUNT_CREATE}
...                            email_valid=xpath=//*[@id="email_create"]
...                            button_create=xpath=//*[@id="SubmitCreate"]
...                            mr=xpath=//*[@id="id_gender1"]
...                            first_name=//*[@id="customer_firstname"] 
...                            last_name=xpath=//*[@id="customer_lastname"]
...                            password=xpath=//*[@id="passwd"]
...                            day=xpath=//*[@id='uniform-days']
...                            day_select=xpath=//*[@id='uniform-days']/select
...                            month=xpath=//*[@id='uniform-months']
...                            month_select=xpath=//*[@id='uniform-months']/select
...                            year=xpath= //*[@id='uniform-years']
...                            year_select=xpath=//*[@id='uniform-years']/select
...                            addres=xpath=//*[@id='address1']
...                            city=xpath=//*[@id='city']
...                            state=xpath=//*[@id = 'id_state' and @name = 'id_state']
...                            state_2=xpath=//*[@id='uniform-id_state']
...                            postcode=xpath=//*[@id='postcode']
...                            phone=xpath=//*[@id='phone_mobile']
...                            button_register=xpath=//button[@id='submitAccount']

&{DADOS}         
...                            first_name=Divino Henrique     
...                            last_name=Arantes             
...                            Password=12345        
...                            email=Dhenriquear@gmail.com 
...                            address=Rua dos bobos, N.0
...                            city=Goiania
...                            postcode=00000
...                            phone=00000000000
...                            day=6
...                            month=8
...                            year=1998
...                            state_sel=8
...                            state=California


