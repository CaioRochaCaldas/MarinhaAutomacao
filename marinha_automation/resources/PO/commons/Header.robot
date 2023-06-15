*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SHORTCUT_Ir_PARA_CONTEUDO}    xpath= //a[contains(@accesskey,'1')]
${SHORTCUT_Ir_PARA_MENU}    xpath= //a[contains(@accesskey,'2')]
${SHORTCUT_Ir_PARA_BUSCA}    xpath= //a[contains(@accesskey,'3')]
${SHORTCUT_Ir_PARA_RODAPE}    xpath= //a[contains(@accesskey,'4')]

${LOGO_LINK}                    xpath=//a[contains(@class,'logo navbar-btn pull-left')]

${ACCESSIBILITY_ACESSIBILIDADE}    xpath= //a[contains(.,'Acessibilidade')]
${ACCESSIBILITY_ALTOCONTRASTE}    xpath= //a[contains(.,'Alto Contraste')]
${ACCESSIBILITY_MAPA_DO_SITE}    xpath= //a[contains(.,'Mapa do Site')]

${FACEBOOK_LINK}               xpath=//i[contains(@class,'fa fa-facebook-square fa-fw')]
${TWITTER_LINK}                xpath=//i[contains(@class,'fa fa-twitter-square fa-fw')]
${FLICKR_LINK}                 xpath=//i[contains(@class,'fa fa-flickr fa-fw')]
${YOUTUBE_LINK}                xpath=//i[contains(@class,'fa fa-youtube-square fa-fw')]

${DOWN_NAVBAR_LOCALIZACAO}    xpath= //a[contains(@title,'Localização')]
${DOWN_NAVBAR_MINISTERIO_DA_DEFESA}    xpath=(//a[@href='http://www.defesa.gov.br/'][contains(.,'Ministério da Defesa')])[1]
${DOWN_NAVBAR_CONTATO}    xpath=//a[contains(@title,'Contato')]

*** Keywords ***
Validando shortcuts header-top
    Click Element    ${SHORTCUT_Ir_PARA_CONTEUDO}
    Click Element    ${SHORTCUT_Ir_PARA_MENU}
    Click Element    ${SHORTCUT_Ir_PARA_BUSCA} 
    Click Element    ${SHORTCUT_Ir_PARA_CONTEUDO}

Validando link do logo 
    Click Element    ${LOGO_LINK}   

Validando itens da listagem accessibility
    Click Element    ${ACCESSIBILITY_ACESSIBILIDADE} 
    Click Element    ${ACCESSIBILITY_ALTOCONTRASTE} 
    Click Element    ${ACCESSIBILITY_MAPA_DO_SITE}

Validando links sociais Header facebook
    Click Element    ${FACEBOOK_LINK}
Validando links sociais Header twitter
    Click Element    ${TWITTER_LINK} 
Validando links sociais Header flickr
    Click Element    ${FLICKR_LINK}  
Validando links sociais Header youtube
    Click Element    ${YOUTUBE_LINK} 

Validando link do down navbar "Localização" 
    Click Element    ${DOWN_NAVBAR_LOCALIZACAO} 
Validando link do down navbar "Ministério da Defesa" 
    Click Element    ${DOWN_NAVBAR_MINISTERIO_DA_DEFESA}
Validando link do down navbar "Contato" 
    Click Element    ${DOWN_NAVBAR_CONTATO}

