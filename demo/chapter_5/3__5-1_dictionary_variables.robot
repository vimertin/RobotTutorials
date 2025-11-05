*** Comments ***
[K1] Recall that &{dict} unpacks to multiple key=value pairs when accessed

Run the test and look at the results in the log.
Show the learners the log.html and take a closer look at the dictionaries.


*** Settings ***
Library     python/CustomLibrary.py


*** Variables ***
${ADMIN}        admin
${PASSWORD}     @RBTFRMWRK@


*** Test Cases ***
Test With Dictionary Variables
    Connect    fe80::aede:48ff:fe00:1122
    Get Connection Details
    Login Admin User
    Create User With Admin Rights
    ${user_id}    Get User Id    spider
    ${user}    Get User Dictionary    ${user_id}
    &{user_2}    Get User Dictionary    ${user_id}
    Disconnect

Test To Access Dictionary Variables
    Connect    fe80::aede:48ff:fe00:1122
    Get Connection Details
    Login Admin User
    Create User With Admin Rights
    ${user_id}    Get User Id    spider
    &{user}    Get User Dictionary    ${user_id}
    Log    ${user.name}
    Log    ${user}[right]
    Log User    &{user}
    Disconnect


*** Keywords ***
Log User
    [Arguments]    ${login}    ${name}    ${right}
    Log    The user ${login} is called ${name} and has the right ${right}

Login Admin User
    Set Login Name    ${ADMIN}
    Set Password    ${PASSWORD}
    Execute Login

Create User With Admin Rights
    Login Admin User
    Create New User
    ...    name=Peter Parker
    ...    login=spider
    ...    password=123spiderman321
    ...    right=user
