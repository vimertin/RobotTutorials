*** Comments ***
[K3] Use the RETURN statement to return values from a user keyword and assign it to a variable.

Task for Learners:

1. Use the RETURN statement:
    1.1. Implement the keyword 'Get File From Path' to return the file name (with extension) from a given file path (e.g. server.log).
    1.2. Implement the keyword 'Get File Name And Extension From Path' to return both the file name and file extension from a given file path separately (e.g. server and log).
    1.3. Assign the return values of the keywords to variables and log their values.

2. Run the Test Case:
    2.1. Execute the test case and analyze the results. Did your test pass?

Hint: Some keywords you might find helpful are: Split Path, Split String, Split Extension

*** Settings ***
Library     OperatingSystem
Library     String


*** Variables ***
${LOG_FILE_PATH}      ${CURDIR}/server/logs/server.log


*** Test Cases ***
Exercise: Use RETURN Statement
    [Documentation]    Extract and log the file name and file extension from a given file path.
    No Operation
    Log    File Name: ${file}
    No Operation
    Log    File Name: ${file_name}
    Log    File Extension: ${file_extension}


*** Keywords ***
Get File From Path
    [Arguments]    ${file_path}
    No Operation
    # Add your keyword steps here

Get File Name And Extension From Path
    [Arguments]    ${file_path}
    No Operation
    # Add your keyword steps here
