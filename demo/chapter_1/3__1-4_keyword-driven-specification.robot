*** Comments ***
[K2] Understand the basic concepts of Keyword-Driven Specification


*** Settings ***
Library     python/CustomLibrary.py


*** Test Cases ***
Verify User Login
    [Documentation]    Test case to verify
    ...    login function of the Test Object
    Connect To Server    192.168.0.1
    Verify User Login    captain    1234567890
    Verify User Logout
    Disconnect From Server


*** Keywords ***
Connect To Server
    [Arguments]    ${server_ip}
    Connect    ${server_ip}
    ${conn_details}    Get Connection Details
    Log    ${conn_details}

Verify User Login
    [Arguments]    ${username}    ${password}
    Login User    ${username}    ${password}
    ${user_details}    Get User Details
    Log    ${user_details}

Verify User Logout
    Logout User
    Run Keyword And Expect Error    PermissionError: Token not valid or account locked.    Get User Details

Disconnect From Server
    Disconnect
    Run Keyword And Expect Error    SystemError: No Connection established! Connect to server first!    Get Connection Details
