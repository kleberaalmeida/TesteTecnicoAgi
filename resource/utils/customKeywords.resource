*** Settings ***
Resource    ../../base.resource

*** Keywords ***

Wait And Input Text
    [Arguments]    ${locator}    ${text}

    TRY
        Wait Until Element Is Visible    ${locator}
        WHILE   ${True}    limit=10
        ${status}    Run Keyword And Return Status    Input Text    ${locator}    ${text}

        IF    ${status}
            BREAK
            
        END
            
        END
    EXCEPT    
    Fail    Erro ao preencher o campo ${locator}
        
    END

Wait And Click Element Search
    [Arguments]    ${locator}

    TRY
        
        WHILE   ${True}    limit=10
        Click Element    ${locator} 
        ${status}     Run Keyword And Return Status   Wait Until Element Is Visible    ${input.adicionar_informacao}
        IF    ${status}
            BREAK
            
        END
            
        END
    EXCEPT    
    Fail    Erro ao preencher o campo ${locator}
        
    END


Wait Element Should Contain Text
    [Arguments]    ${locator}    ${expectedText}

    TRY
        
        WHILE   ${True}    limit=10
        Wait Until Element Is Visible    ${locator}    300
        ${status}    Run Keyword And Return Status    Wait Until Element Contains        ${locator}    ${expectedText}
        IF    ${status}
            BREAK
            
        END
            
        END
    EXCEPT    
    Fail    Erro ao preencher o campo ${locator}
        
    END

Wait And Click Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

        
