*** Comments ***
[K2] Understand the basic concepts of Behavior-Driven Specification


*** Settings ***
Library     python/CustomLibrary.py


*** Test Cases ***
Verify Server Connection And Login Functions
    Given The Server Is Connected Via 192.168.0.1 In Mode Headless    False
    When The User captain With Password 1234567890 Is Logged In
    Then The Connection Details Should Be Displayed
    And The Logout Of The User Is Possible


*** Keywords ***
The Server Is Connected Via ${server_ip} In Mode Headless
    [Arguments]    ${headless}=True
    Connect    ${server_ip}
    ${conn_details}    Get Connection Details
    Log    Headless Mode = ${headless}
    Log    ${conn_details}

The User ${username} With Password ${password} Is Logged In
    Login User    ${username}    ${password}

The Connection Details Should Be Displayed
    ${user_details}    Get User Details
    Log    ${user_details}

The Logout Of The User Is Possible
    Logout User
    Run Keyword And Expect Error    PermissionError: Token not valid or account locked.    Get User Details
    Disconnect
    Run Keyword And Expect Error    SystemError: No Connection established! Connect to server first!    Get Connection Details
