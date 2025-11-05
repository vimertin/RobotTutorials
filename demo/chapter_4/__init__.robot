*** Comments ***
This is an example of a possible initialization file


*** Settings ***
Documentation       Initialization file for the Sample Suite

Resource            resources/keywords.resource

Suite Setup         Initialize Environment
Suite Teardown      Cleanup Environment


*** Variables ***
${BASE_URL}     https://example.com


*** Keywords ***
Initialize Environment
    Start Server
    Set Base Url    ${BASE_URL}
    Import Dataset    ${BASE_URL}/imports    dataset=Config_C3
    Verify Server Status    ${BASE_URL}    status=OK

Cleanup Environment
    Reset Database
    Stop Server
