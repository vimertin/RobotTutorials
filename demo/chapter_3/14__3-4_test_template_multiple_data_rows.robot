*** Comments ***
[K2] Understand the basic concept and syntax of Data-Driven Specification
[K1] Recall the syntax and properties of named test|task with multiple data rows


*** Settings ***
Resource            resources/keywords.resource

Suite Setup         Connect To Server
Suite Teardown      Close Server Connection


*** Test Cases ***
Valid Logins
    [Template]    Login With Valid Credentials
    ironman    1234567890    Tony Stark
    dr.strange    1234567890    Stephen Strange
    captain    1234567890    Steve Rogers

Invalid Logins
    [Template]    Login With Invalid Credentials
    hulk    1234567890    Bruce Banner    Invalid Password
    spider    1234567890    Peter Parker    User not found.
    captain    ${EMPTY}    Bruce Banner    Invalid Password


*** Keywords ***
Login With Valid Credentials
    [Arguments]    ${login}    ${password}    ${full_name}
    Login User    ${login}    ${password}
    Verify Valid Login    ${full_name}

Login With Invalid Credentials
    [Arguments]    ${login}    ${password}    ${full_name}    ${error_message}
    Run Keyword And Expect Error    ValueError: ${error_message}    Login User    ${login}    ${password}
