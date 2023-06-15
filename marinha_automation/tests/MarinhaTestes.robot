*** Settings ***
Resource    ../resources/Resource.robot
Resource    ../resources/PO/Home.robot
Resource    ../resources/PO/Historico.robot
Resource    ../resources/PO/Missao.robot
Resource    ../resources/PO/commons/Header.robot
Resource    ../resources/PO/MapadoSite.robot
Resource    ../resources/PO/CodigodeEtica.robot

Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Cases ***
Caso de teste: validar itens da home
    Home.Acessar a página home do site
    Home.Validar mensagem boas vindas
    Home.Validar Slides da home 
    Home.Validar mensagem "Ultimas noticias"

Caso de teste: validar itens pagina historico
    Home.Acessar a página home do site
    Home.Acessar item Historico sidebar menu
    Historico.Validar itens da pagina Historico

Caso de teste: validar itens pagina Missao 
    Home.Acessar a página home do site
    Home.Acessar item Missao sidebar menu
    Missao.Validar itens da pagina Missao

Caso de teste: validar itens pagina Codigo de Etica 
    Home.Acessar a página home do site
    Home.Home.Acessar item Codigo de Etica sidebar menu
    CodigodeEtica.Validar espera icone da pagina do arquivo de Codigo de Etica

Caso de teste: testando a acessibilidade do Header
    [Tags]    header acessibilidade
    Home.Acessar a página home do site
    Header.Validando shortcuts header-top
    Header.Validando link do logo 
    Header.Validando itens da listagem accessibility
    MapadoSite.Validando itens pagina "Mapa do Site"

Caso de teste: testando link sociais do header
    [Tags]    header social link
    Home.Acessar a página home do site
    Header.Validando links sociais Header facebook
    Header.Validando links sociais Header twitter
    Header.Validando links sociais Header flickr
    Header.Validando links sociais Header youtube

Caso de teste: testando links navbar down   
    Home.Acessar a página home do site
    Header.Validando link do down navbar "Localização" 
    Header.Validando link do down navbar "Ministério da Defesa" 
    Header.Validando link do down navbar "Contato"