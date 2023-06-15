*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_URL}                          https://www.marinha.mil.br/ipqm/
${SIDEBAR_MENU_ITEM_HISTORICO}       xpath=  (//a[@href='/ipqm/historico'][contains(.,'Histórico')])[1]
${HOME_TITLE_WELCOME}                xpath= //h1[@class='page-header'][contains(.,'Seja Bem-Vindo!')]
${HOME_SLIDE}                        id = banner_principal
${HOME_TITLE_NOTICIAS}               xpath = //h2[@class='block-title'][contains(.,'Últimas Notícias')]
${SIDEBAR_MENU_ITEM_MISSAO}          xpath = (//a[@href='/ipqm/missao'][contains(.,'Missão')])[1]
${SIDEBAR_MENU_ITEM_CODIGO_DE_ETICA}  xpath=(//a[@href='https://www.marinha.mil.br/ipqm/sites/www.marinha.mil.br.ipqm/files/arquivos/codigo_etica.pdf'][contains(.,'Código de Ética')])[1]

*** Keywords ***

Acessar a página home do site
    Go To               ${HOME_URL}

Validar mensagem boas vindas
    Element Text Should Be    ${HOME_TITLE_WELCOME}     Seja Bem-Vindo!

Validar Slides da home 
    Element Should Be Visible    ${HOME_SLIDE}

Validar mensagem "Ultimas noticias"
    Element Text Should Be    ${HOME_TITLE_NOTICIAS}    Últimas Notícias

Acessar item Historico sidebar menu
    Element Text Should Be    ${SIDEBAR_MENU_ITEM_HISTORICO}    Histórico
    Click Element    ${SIDEBAR_MENU_ITEM_HISTORICO}

Acessar item Missao sidebar menu
    Element Text Should Be    ${SIDEBAR_MENU_ITEM_MISSAO}    Missão
    Click Element    ${SIDEBAR_MENU_ITEM_MISSAO}
    
Home.Acessar item Codigo de Etica sidebar menu
    Element Text Should Be    ${SIDEBAR_MENU_ITEM_CODIGO_DE_ETICA}    Código de Ética
    Click Element    ${SIDEBAR_MENU_ITEM_CODIGO_DE_ETICA}



    
     