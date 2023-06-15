*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HISTORICO_TITULO}    xpath = //h1[@class='page-header'][contains(.,'Histórico')]
${HISTORICO_IMAGEM}    name = pfundamental

*** Keywords ***
Validar itens da pagina Historico
    Element Text Should Be    ${HISTORICO_TITULO}     Histórico
    Wait Until Element Is Visible    ${HISTORICO_IMAGEM}


