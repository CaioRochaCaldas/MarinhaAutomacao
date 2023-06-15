*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PAGE_TITLE}    xpath= //h1[@class='page-header'][contains(.,'Mapa do Site')]

*** Keywords ***
Validando itens pagina "Mapa do Site"
    Element Text Should Be    ${PAGE_TITLE}    Mapa do Site