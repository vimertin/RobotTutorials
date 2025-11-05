*** Settings ***
Documentation       This is a resource file that can contain variables and keywords.
...                 Keywords defined here can be used where this Keywords.resource in loaded.

Library             python/CustomLibrary.py    tc_session_reset=False


*** Variables ***
${FULLNAME}     Administrator    # FULLNAME is a scalar variable containing the string 'Administrator'
@{ALL USERS}    admin    hulk    dr.strange    captain    ironman    # List variable with 5 values.
&{ADMIN}        login=admin    pwd=@RBTFRMWRK@    # Dictionary variable
&{SPIDERMAN}    login=spider    name=Peter Parker    right=user    active=${True}
${MESSAGE}      Hello, Robot Framework!


*** Keywords ***
Connect To Server
    Connect    fe80::aede:48ff:fe00:1122

Start Server
    Connect To Server
    ${conn_details}=    Get Connection Details
    Log    ${conn_details}

Set Base Url
    [Arguments]    ${url}
    Log    Base url set to: ${url}

Import Dataset
    [Arguments]    ${url}    ${dataset}
    Log    Importing dataset '${dataset}' from '${url}'
    Log    Import successful...

Verify Server Status
    [Arguments]    ${url}    ${status}
    IF    '${url}' == 'https://example.com'
        VAR    ${server_status}    OK
    ELSE
        VAR    ${server_status}    ERROR
    END
    Should Be True    '${server_status}' == '${status}'

Reset Database
    Log    Resetting database...
    FOR    ${i}    IN RANGE    ${10}
        Log    Cleanup column ${i}
    END
    Log    Reset successful.

Stop Server
    Disconnect
    Log    Server stopped...

Login User
    [Arguments]    ${login}    ${password}
    Connect To Server
    Set Login Name    ${login}
    Set Password    ${password}
    Execute Login
    Log    Login for '${login}' successful.

Login As Admin
    Login User    ${ADMIN}[login]    ${ADMIN}[pwd]
    Verify Valid Login    Administrator

Login As Standard User
    Connect To Server
    Set Login Name    dr.strange
    Set Password    1234567890
    Execute Login
    Log    Login as standard user successful.

Logout User
    CustomLibrary.Logout User
    Log    Logout successful.

Verify Valid Login
    [Arguments]    ${exp_full_name}
    ${version}=    Get Server Version
    Should Not Be Empty    ${version}
    ${name}=    Get User Name
    Should Be Equal    ${name}    ${exp_full_name}

Do Some Testing
    Log    Executing functional test...
    Log    Executing another functional test...

Do Some Other Testing
    Log    Executing non-functional test...
    Log    Executing another non-functional test...

Perform Test Steps
    Log    Step 1 executed....
    Log    Step 2 executed...

Perform Other Steps
    Log    Step 3 executed...
    Log    Step 4 executed...

Perform User Action
    [Arguments]    ${action}
    Log    User action '${action}' executed...

Perform Admin Action
    [Arguments]    ${action}
    Log    Admin action '${action}' executed...

Perform Action Without Login
    [Arguments]    ${action}
    Log    Anonymous action '${action}' executed...

Cleanup Specific Data
    Log    Database reset successful!
