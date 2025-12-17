*** Settings ***
Resource    ../base.resource
Test Setup        Abrir Browser
Test Teardown     Close All Browsers

*** Test Cases ***
Validar Campo Pesquisa
    Realizar Pesquisa
    Validar Produtos

Validar Pagina do Post Produtos
    Realizar Pesquisa
    Acessar Post da Pagina Produtos
    Validar Post de Produtos    