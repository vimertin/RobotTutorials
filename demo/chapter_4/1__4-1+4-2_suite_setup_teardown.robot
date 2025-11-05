*** Comments ***
[K2] Understand when Suite Setup is executed and used
[K2] Understand when Suite Teardown is executed and used


*** Settings ***
Suite Setup         Initialize Environment    dataset=Config_C3
Suite Teardown      Close All Resources    force=True


*** Test Cases ***
First Test Case
    [Documentation]    This is a demo test case
    Log    First test case executed...

Second Test Case
    [Documentation]    This is another demo test case
    [Setup]    Initialize Database    database=mysql
    Log    Second test case executed...


*** Keywords ***
Initialize Environment
    [Documentation]    Example keyword for environment initialization
    [Arguments]    ${dataset}
    Log    Environment with '${dataset}' initialized...

Initialize Database
    [Documentation]    Example keyword for database initialization
    [Arguments]    ${database}
    Log    Database '${database}' initialized...

Close All Resources
    [Documentation]    Example keyword for teardown
    [Arguments]    ${force}=False
    Log    Resources closed (forced = ${force})...