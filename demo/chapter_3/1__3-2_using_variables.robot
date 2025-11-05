*** Comments ***
[K2] Understand how variables in Robot Framework are used to store and manage data


*** Variables ***
# Declaring suite variables in the variables section
${USERNAME}     user
${GREETING}     Hello, ${USERNAME}!


*** Test Cases ***
Showcase Variables
    [Documentation]    This test case demonstrates the use of variables in Robot Framework.
    Log Greeting
    ${status}=    Perform Calculation    5    3    # storing variables from return values
    Log    Calculation result: ${status}


*** Keywords ***
Log Greeting
    [Documentation]    Logs a greeting message using a variable.
    Log    ${GREETING}

Perform Calculation
    [Documentation]    Performs a simple calculation and returns the result.
    [Arguments]    ${a}    ${b}
    ${result}=    Evaluate    ${a} + ${b}
    RETURN    ${result}
