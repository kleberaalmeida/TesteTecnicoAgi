*** Settings ***
Resource    ../../base.resource

*** Variables ***
${informacao}    Produtos

*** Keywords ***

Realizar Pesquisa
    Wait And Click Element Search      ${btn.lupa_pesquisar}
    Wait And Input Text                ${input.adicionar_informacao}     ${informacao}
    Press Key                          ${input.adicionar_informacao}     \\13
