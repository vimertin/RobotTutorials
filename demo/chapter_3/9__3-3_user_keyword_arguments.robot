*** Comments ***
[K2] Understand the purpose and syntax of the [Arguments] setting in User Keywords.


*** Variables ***
${DEFAULT_USERNAME}     default_user
${DEFAULT_PASSWORD}     default_pass


*** Test Cases ***
Test User Keyword With Arguments
    [Documentation]    This test case demonstrates how to use user keywords with arguments.
    Login User    admin    admin_pass
    Login User    ${DEFAULT_USERNAME}    ${DEFAULT_PASSWORD}
    Login User    guest    guest_pass
    Login User With Type Conversion    admin    secret    admin=True
    Login User With Type Conversion    user    default_pass
    Run Keyword And Continue On Failure
    ...    Login User With Type Conversion    user    testpass
    Login User With Type Conversion    user    default_pass    admin=No



*** Keywords ***
Login User
    [Documentation]    Logs in a user with the provided username and password.
    [Arguments]    ${username}    ${password}
    Log    Logging in with username: '${username}' and password: '${password}'
    # Here you would add the actual login steps, e.g., inputting the username and password into a login form

Login User With Type Conversion
    [Documentation]    Logs in a user with the provided username and password, converting them to uppercase.
    [Arguments]    ${username}    ${password: Literal["secret", "default_pass"]}    ${admin: bool}=False
    Log    Logging in with username: '${username}' and password: '${password}' as admin=${admin}
    # Here you would add the actual login steps, e.g., inputting the username and password into a login form