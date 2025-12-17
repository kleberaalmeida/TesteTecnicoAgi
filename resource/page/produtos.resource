*** Settings ***
Resource    ../../base.resource

*** Variables ***
${textoPaginaProdutos}    Resultados encontrados para: Produtos
${textoPostProdutos}      Top 10 produtos mais procurados na Black Friday 2024


*** Keywords ***
Validar Produtos
    Wait Element Should Contain Text       ${text.validar_texto_produtos}    ${textoPaginaProdutos}

Acessar Post da Pagina Produtos
    Wait And Click Element                 ${link.acessar_link_produtos}

Validar Post de Produtos
    Wait Element Should Contain Text       ${text.validar_acesso_post}       ${textoPostProdutos}      