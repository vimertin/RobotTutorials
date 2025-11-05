*** Comments ***
[K2] Understand the purpose and limitations of the *** Keywords *** section.


*** Settings ***
Library             python/CustomLibrary.py    tc_session_reset=False

Suite Setup         Initialize Testobject
Suite Teardown      Reset Testobject


*** Variables ***
${IP}           192.168.1.1
${ADMIN}        admin
${PASSWORD}     @RBTFRMWRK@
${RIGHT}        ${2}
&{NEW_USER}
...             name=New User
...             login=new
...             password=MyS3cr3tP4ss!
...             right=user


*** Test Cases ***
Verify Functional Requirements
    Login Admin User
    Create New User As Admin
    Verify User Exists
    Change User Properties As Admin
    Verify Property Changes


*** Keywords ***
Initialize Testobject
    Connect    ${IP}
    ${conn_details}    Get Connection Details
    Should Contain    ${conn_details}    ${IP}
    Log    Initialization successfull!

Reset Testobject
    Disconnect
    Run Keyword And Expect Error
    ...    SystemError: No Connection established! Connect to server first!
    ...    Get Connection Details
    Log    Reset of Testobject successful!

Login Admin User
    Set Login Name    ${ADMIN}
    Set Password    ${PASSWORD}
    Execute Login

Create New User As Admin
    Create New User
    ...    ${NEW_USER}[name]
    ...    ${NEW_USER}[login]
    ...    ${NEW_USER}[password]
    ...    ${NEW_USER}[right]

Verify User Exists
    ${new_user_id}    Get User Id    ${NEW_USER}[login]
    ${new_user_details}    Get User Details    ${new_user_id}
    Should Be Equal    ${new_user_details}[name]    ${NEW_USER}[name]
    Should Be Equal    ${new_user_details}[login]    ${NEW_USER}[login]
    Should Be Equal    ${new_user_details}[right]    ${NEW_USER}[right]

Change User Properties As Admin
    Change Users Name    ${NEW_USER}[login]    Han Solo

Verify Property Changes
    ${new_user_id}    Get User Id    ${NEW_USER}[login]
    ${new_user_details}    Get User Details    ${new_user_id}
    Should Be Equal    ${new_user_details}[name]    Han Solo
    Should Be Equal    ${new_user_details}[login]    ${NEW_USER}[login]
    Should Be Equal    ${new_user_details}[right]    ${NEW_USER}[right]
