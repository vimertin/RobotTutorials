*** Comments ***
[K1] Recall the purpose of Data-Driven Specification
[K2] Understand the concepts of suite settings and how to define them.


*** Settings ***
Library             python/CustomLibrary.py
Resource            variables.resource

Suite Setup         Connect    ${SERVER}
Suite Teardown      Disconnect
Test Template       Verify Failed Login


*** Test Cases ***
Right User Empty Password    ${LOGIN}    ${EMPTY}
Right User Wrong Password    ${LOGIN}    FooBar
Empty User Right Password    ${EMPTY}    ${PASSWORD}
Empty User Empty Password    ${EMPTY}    ${EMPTY}
Empty User Wrong Password    ${EMPTY}    FooBar
Wrong User Right Password    FooBar    ${PASSWORD}
Wrong User Empty Password    FooBar    ${EMPTY}
Wrong User Wrong Password    FooBar    FooBar


*** Keywords ***
Verify Failed Login
    [Arguments]    ${login}    ${password}
    Run Keyword And Expect Error    ValueError: *    Login User    ${login}    ${password}
