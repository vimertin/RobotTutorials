*** Comments ***
[K2] Understand the concepts of suite settings and how to define them.


*** Settings ***
Documentation       Here I want to document what this suite does
Metadata            OS    ${{platform.version()}}
Metadata            PYTHON VERSION    ${{platform.python_version()}}
Metadata            SOME META    Something I want to define

Library             python/CustomLibrary.py
Resource            resources/variables.resource

Suite Setup         Setup Testobject
Suite Teardown      Teardown Testobject

Name                My Own Suite Name


*** Test Cases ***
Verify User Details
    [Documentation]    This test shows that the user is already logged into
    ...    a valid session from the suite setup
    [Tags]    functional
    [Setup]    Print Connection Details
    ${user_details}    Get User Details
    Log To Console    ${user_details}

Run Into Timeout
    [Documentation]    This test runs into a timeout after 5 seconds
    [Tags]    non-functional
    [Timeout]    5sec
    FOR    ${i}    IN RANGE    10    -1    -1
        Log To Console    ${i}
        IF    ${i} == 0    BREAK
        Sleep    1sec
    END


*** Keywords ***
Setup Testobject
    Connect    ${SERVER}
    Login User    ${LOGIN}    ${PASSWORD}
    ${version}    Get Server Version
    Log To Console    Successfully connected to server-version: ${version}
    ${user_id}    Get User Id    ${LOGIN}
    Log To Console    Successfully logged in: ${user_id}

Print Connection Details
    ${conn_details}    Get Connection Details
    Log To Console    ${conn_details}

Teardown Testobject
    Logout User
    Disconnect
