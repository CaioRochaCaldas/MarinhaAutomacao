*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${MISSAO_TITULO}    xpath= //h1[@class='page-header'][contains(.,'Missão')] 
${MISSAO_IMG}       id=missao_foto

*** Keywords ***
Validar itens da pagina Missao
    Element Text Should Be    ${MISSAO_TITULO}    Missão
    Wait Until Element Is Visible    ${MISSAO_IMG} 
    
