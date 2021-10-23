*** Settings ***
Documentation        Aqui estarão todos os recursos que compõem o projeto

####################################
#             Libraries            #
####################################

Library        SeleniumLibrary    

####################################
#             Keywords             #
####################################

Resource        keywords/kws_webautomation.robot

####################################
#             Keywords             #
####################################

Resource        pages/pages_webautomation.robot

####################################
#             Hooks                #
####################################

Resource        ../resources/hooks.robot

