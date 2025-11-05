*** Comments ***
[K2] Understand when Keyword Teardown is executed and used


*** Test Cases ***
Test User Actions
    Perform User Actions    Robotframework


*** Keywords ***
Perform User Actions
    [Arguments]    ${action}
    [Setup]    Open User Connection
    Perform Action    ${action}
    [Teardown]    Close Data Connection

Open User Connection
    Log    Open the connection!

Close Data Connection
    Log    Close data connection!

Perform Action
    [Arguments]    ${action}
    Log    Do Something with ${action}!
