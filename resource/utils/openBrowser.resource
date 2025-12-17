*** Settings ***
Resource     ../../base.resource

*** Keywords ***
    
Abrir Browser    
    Open Browser
    ...     url=https://blog.agibank.com.br/
    ...     browser=edge
    Maximize Browser Window