*** Comments ***
[K3] Be able to add in-line comments to suites.

Task for Learners:
    
1. Add In-line Comments:
    1.1. Add in-line comments to the variable definition, test case, and keyword.
    1.2. Ensure that each comment explains what the line of code does.
    1.3. Add a full line comment at the end of the file explaining what you learned.


*** Settings ***
Documentation       This suite is an exercise to practice adding in-line comments to test cases and tasks.


*** Variables ***
${MESSAGE}      Hello, Robot Framework!


*** Test Cases ***
Example Test Case
    [Documentation]    This is an example test case.    # This is an in-line comment for documentation
    Log    ${MESSAGE}     # Logs the message variable
    Should Be Equal    ${MESSAGE}    Hello, Robot Framework!    # Verifies the message content
    Log Argument    My Argument    # Logs the argument


*** Keywords ***
Log Argument
    [Documentation]    This is an example keyword.    # This is another in-line comment for documentation
    [Arguments]    ${argument}    # Hands over an argument to the keyword
    Log    ${argument}    # Logs the handed over argument

# I learned how to add in-line comments and full line comments in Robot Framework.
