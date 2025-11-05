*** Comments ***
[K2] Understand how the RETURN statement passes data between different keywords.


*** Settings ***
Library     OperatingSystem
Library     String


*** Variables ***
${LOG_DIR}      ${CURDIR}/server/logs/


*** Test Cases ***
Test Return Statement
    [Documentation]    This test case demonstrates how to use the RETURN statement
    ...    to pass data between different keywords.
    ${file_name} =    Get File Name From Path    ${LOG_DIR}server.log
    Log    File Name: ${file_name}
    ${file_name}    ${file_extension} =    Get File Name And Extension From Path    ${LOG_DIR}server.log
    Log    File Name: ${file_name}
    Log    File Extension: ${file_extension}


*** Keywords ***
Get File Name From Path
    [Arguments]    ${file_path}
    ${path}    ${file} =    Split Path    ${file_path}
    RETURN    ${file}

Get File Name And Extension From Path
    [Arguments]    ${file_path}
    ${path}    ${file} =    Split Path    ${file_path}
    ${file_name}    ${file_extension} =    Split String    ${file}    .
    RETURN    ${file_name}    ${file_extension}
