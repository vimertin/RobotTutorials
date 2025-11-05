*** Comments ***
[K2] Describe how embedded arguments are replaced by actual values during keyword execution.


*** Settings ***
Library     OperatingSystem


*** Variables ***
${LOG_DIR}      ${CURDIR}/server/logs/


*** Test Cases ***
Test Embedded Arguments
    [Documentation]    This test case demonstrates the use of embedded arguments in keyword names.
    The File 'server.log' Should Contain 'Successfully started'
    The File 'test.log' Should Contain 'User logged in'


*** Keywords ***
The File '${file_name}' Should Contain '${expected_content}'
    [Documentation]    Verifies that the specified file contains the expected content.
    ${file_content} =    Get File    ${LOG_DIR}${file_name}
    Should Contain    ${file_content}    ${expected_content}
