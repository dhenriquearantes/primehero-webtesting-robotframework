*** Settings ***
Documentation            Todas as configurações de Setup e Teardown do projeto estarão aqui.
Resource                 ../resources/package.robot
*** Variables ***
${BROWSER}        chrome
${URL}            http://automationpractice.com/index.php


*** Keywords ***
Abrir navegador
    Open Browser         url=${URL}              browser=${BROWSER}
    #Maximize Browser Window

Fechar navegador
    Close Browser