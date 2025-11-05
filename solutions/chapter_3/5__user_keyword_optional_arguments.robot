*** Comments ***
[K3] Define User Keywords with optional arguments.

Task for Learners:

    1. Add the Arguments to the keyword implementation:
       1.1. Add optional arguments to the keyword below, according to the documentation.
    2. Use the keyword in the testcase with and without optional arguments.

*** Settings ***
Library     OperatingSystem


*** Variables ***
${LOG_DIR}          ${CURDIR}/server/logs
${SERVER_LOG}       server.log


*** Test Cases ***
Verify Server Log
    [Documentation]    This test case demonstrates how to define user keywords with optional arguments.
    Verify File Contains    ${LOG_DIR}/${SERVER_LOG}    Successfully started
    Verify File Contains    ${LOG_DIR}/${SERVER_LOG}    Successfully started    utf-8    False


*** Keywords ***
Verify File Contains
    [Documentation]    Verifies that a file contains a specific text.
    ...    The keyword opens the file specified by the ``file_path``
    ...    and checks if it contains the ``expected_content``.
    ...    By default, the encoding is utf-8 and verification is case-insensitive
    ...    but can be changed with the optional argument ``ignore_case``.
    [Arguments]    ${file_path}    ${expected_content}    ${encoding}=utf-8    ${ignore_case}=${True}
    ${file_content}    Get File    ${file_path}    ${encoding}
    Should Contain    ${file_content}    ${expected_content}    ignore_case=${ignore_case}
