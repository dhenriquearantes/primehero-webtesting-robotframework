*** Settings ***
Documentation        Aqui estarão todos os recursos que compõem o projeto

####################################
#             Libraries            #
####################################

Library         SeleniumLibrary   

####################################
#             Keywords             #
####################################

Resource        ../resources/keywords/kws_webautomation.robot

####################################
#             Pages                #
####################################

Resource        ../resources/pages/pages_webautomation.robot

####################################
#             Hooks                #
####################################

Resource        ../resources/hooks.robot

