*** Comments ***
[K2] Understand how to define and use test|task templates


*** Settings ***
Resource            resources/keywords.resource

Suite Setup         Connect To Server
Suite Teardown      Close Server Connection
Test Template       Login With Valid Credentials


*** Test Cases ***    LOGIN        PASSWORD      FULL NAME
Login Ironman        ironman       1234567890    Tony Stark
Login DrStrange      dr.strange    1234567890    Stephen Strange
Login Captain        captain       1234567890    Steve Rogers


*** Keywords ***
Login With Valid Credentials
    [Arguments]    ${login}    ${password}    ${full_name}
    Login User    ${login}    ${password}
    Verify Valid Login    ${full_name}
