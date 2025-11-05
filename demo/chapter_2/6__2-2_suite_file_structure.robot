*** Comments ***
[K2] Understand the structure of a basic suite file.


*** Settings ***
Documentation       A suite for valid and invalid login tests.
...
...                 Keywords are imported from the resource file.

Resource            resources/keywords.resource


*** Test Cases ***
Login User With Password
    Connect To Server
    Login User    ironman    1234567890    # Login with valid credentials
    Verify Valid Login    Tony Stark    # Verify that the login was successful by checking the user name
    Close Server Connection

Denied Login With Wrong Password
    Connect To Server
    Run Keyword And Expect Error    # this keyword calls another keyword and expects an error
    ...    *Invalid Password*    # it expects an error containing `Invalid Password`
    ...    Login User    # this keyword is called with two arguments
    ...    ironman
    ...    123#wrong    # A hash in the middle of a string is not a comment
    Verify Unauthorized Access
    Close Server Connection
