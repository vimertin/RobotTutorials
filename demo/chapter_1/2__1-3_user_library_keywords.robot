*** Comments ***
[K2] Explain the difference between User Keywords and Library Keywords


*** Settings ***
Library     python/CustomLibrary.py
Resource    keywords.resource


*** Test Cases ***
Verify Admin Login Test
    Connect to Server
    Login Admin
    Close Server Connection


*** Keywords ***
Login Admin
    [Documentation]    'Login Admin' is a Keyword.
    ...    It calls 'Login User' from 'CustomLibrary.py'
    Login User    ${ADMIN}[login]    ${ADMIN}[pwd]
    Verify Valid Login    Administrator

