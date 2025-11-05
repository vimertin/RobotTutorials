*** Comments ***
[K3] Be able to configure a library import using arguments.

Task for Learners:

1. Configure the `MockTelnet` library import by adding the `newline` and `encoding` parameters.
2. Configure the `MockRemote` library import twice:
    - First, add the `uri` parameter and name the library as `EmbeddedAPI`.
    - Second, add the `uri` parameter and name the library as `DeviceAPI`.
3. Use the configured libraries in the respective test cases:
    - For `Test Using Telnet`, utilize the `MockTelnet` library.
    - For `Test Using EmbeddedAPI`, utilize the `EmbeddedAPI` library.
    - For `Test Using DeviceAPI`, utilize the `DeviceAPI` library.


*** Settings ***
Library    python/MockTelnet.py    newline=CRLF    encoding=ISO-8859-8
Library    python/MockRemote.py    uri=http://127.0.0.1:8270    AS    EmbeddedAPI
Library    python/MockRemote.py    uri=http://remote.devices.local:8270    AS    DeviceAPI


*** Variables ***
${USERNAME}     user
${PASSWORD}     pass
${HOST}         localhost
${PORT}         22


*** Test Cases ***
Test Using Telnet
    [Documentation]    This test case demonstrates how to configure a library import using arguments.
    MockTelnet.Open Connection    ${HOST}
    MockTelnet.Login    ${USERNAME}    ${PASSWORD}
    ${telnet_init} =    MockTelnet.Read Until Prompt
    Log    ${telnet_init}
    MockTelnet.Close Connection

Test Using EmbeddedAPI
    [Documentation]    This test case demonstrates how to configure a library import using arguments.
    EmbeddedAPI.Open Connection    ${HOST}    ${PORT}
    EmbeddedAPI.Login    ${USERNAME}    ${PASSWORD}
    ${embeddedapi_init} =    EmbeddedAPI.Read Until Prompt
    Log    ${embeddedapi_init}
    EmbeddedAPI.Close Connection

Test Using DeviceAPI
    [Documentation]    This test case demonstrates how to configure a library import using arguments.
    DeviceAPI.Open Connection    ${HOST}    ${PORT}
    DeviceAPI.Login    ${USERNAME}    ${PASSWORD}
    ${deviceapi_init} =    DeviceAPI.Read Until Prompt
    Log    ${deviceapi_init}
    DeviceAPI.Close Connection
