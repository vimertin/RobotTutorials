*** Comments ***
[K2] Understand how to create variables using the VAR statement


*** Settings ***
Library             python/CustomLibrary.py


*** Test Cases ***
Test With VAR
    Create And Log Scalar Variable
    Create And Log List Variables
    Create And Log Dictionary Variables


*** Keywords ***
Create And Log Scalar Variable
    VAR    ${greeting}    Hello!
    Log    ${greeting}

Create And Log List Variables
    VAR    @{NAMES}    Matti    Teppo
    VAR    @{EMPTY_LIST}       @{EMPTY}
    VAR    @{NUMBERS}          one    two    three
    ...                 four    five    six
    Log Many    @{NAMES}
    Log    ${EMPTY_LIST}
    Log    ${NUMBERS}
    Log    ${NUMBERS}[0]

Create And Log Dictionary Variables
    VAR    &{USER}    name=Matti    address=xxx    phone=123
    Log    ${USER}
    Log    ${USER}[name]

Conditional Assignment With VAR
    [Arguments]    ${login}
    IF    '${login}' == 'matti'
        VAR    &{user}    name=Matti    address=xxx    phone=123
    ELSE
        VAR    &{user}    name=Teppo    address=yyy    phone=456
    END
    Log    User Info: ${user}
