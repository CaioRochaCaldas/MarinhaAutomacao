*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser        about:blank   ${BROWSER}
    Maximize Browser Window
    
Fechar navegador
    Close Browser
