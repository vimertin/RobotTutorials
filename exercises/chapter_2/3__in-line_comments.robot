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
    [Documentation]    This is an example test case.
    Log    ${MESSAGE}
    Should Be Equal    ${MESSAGE}    Hello, Robot Framework!
    Log Argument    My Argument


*** Keywords ***
Log Argument
    [Documentation]    This is an example keyword.
    [Arguments]    ${argument}
    Log    ${argument}
