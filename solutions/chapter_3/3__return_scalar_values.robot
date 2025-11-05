*** Comments ***
[K3] Be able to assign return values from keywords to variables

Task for Learners:

1. Use Return Values:
    1.1. For each keyword below assign the return values from keywords to variables.
    1.2. Implement the test cases and keywords below according to their documentation and the steps below.
    1.3. Verify the assigned values and log them.

2. Run the Test Case:
    2.1. Execute the test case and analyze the results. Did your test pass?

Steps:
    1. Keyword - Get Server Log
        1.1. Use the keyword 'Get File' with the argument ${LOG_DIR}/${SERVER_LOG} and assign its return value to a variable.
        The 'Get File' keyword returns the contents of a specified file.
        1.2. Log the value of the assigned variable.

    2. Keyword - Get Files In Directory
        2.1. Use the keyword 'List Files In Directory' with the argument ${LOG_DIR} and assign its return value to a variable.
        The 'List Files In Directory' keyword returns a list of the items in the directory.
        2.2. Using the list syntax, log the value of the first item in the list and of the last item in the list.

    Optional:
    3. Keyword - Split File Path
        3.1. Use the keyword 'Split Path' with the appropriate argument.
        The keyword splits the given path from the last path separator and returns both the path and file.
        3.2. Assign the return values of the keyword 'Split Path' to variables and log their value.
           
        

*** Settings ***
Library     OperatingSystem


*** Variables ***
${LOG_DIR}          ${CURDIR}\\server\\logs
${SERVER_LOG}       server.log


*** Test Cases ***
Exercise: Assign Return Values
    [Documentation]    This exercise demonstrates how to assign return values from keywords to variables.
    Get Server Log
    Get Files In Directory
    Split File Path


*** Keywords ***
Get Server Log
    [Documentation]    Assigns the content of the server log file to a variable and checks
    ...    if it contains a specific string.
    ${server_log}    Get File    ${LOG_DIR}\\${SERVER_LOG}
    Should Contain    ${server_log}    Successfully started
    Log    Server Log Content: ${server_log}

Get Files In Directory
    [Documentation]    Assigns the list of files in a directory to a variable and logs the first and last file.
    ${files}    List Files In Directory    ${LOG_DIR}
    Log    First File: ${files}[0]
    Log    Last File: ${files}[-1]

Split File Path
    [Documentation]    Assigns the path and file name from a file path to variables and verifies their values.
    ${path}    ${file}    Split Path    ${LOG_DIR}\\${SERVER_LOG}
    Should Be Equal    ${path}    ${LOG_DIR}
    Should Be Equal    ${file}    ${SERVER_LOG}
    Log    Path: ${path}
    Log    File: ${file}
