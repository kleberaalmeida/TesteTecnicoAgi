*** Settings ***
# Bibliotecas
Library    SeleniumLibrary

# Utils
Resource    resource/utils/openBrowser.resource
Resource    resource/utils/customKeywords.resource

# Common
Resource    resource/common/commons.resource

# Locators
Variables    resource/locators/commonsLocators.yml
Variables    resource/locators/produtosLocators.yml

# Pages
Resource    resource/page/produtos.resource   

