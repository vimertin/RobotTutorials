*** Settings ***
Resource    keywords.resource


*** Keywords ***
Login With Valid Credentials
    [Arguments]    ${login}    ${password}    ${full_name}
    Login User    ${login}    ${password}
    Verify Valid Login    ${full_name}
