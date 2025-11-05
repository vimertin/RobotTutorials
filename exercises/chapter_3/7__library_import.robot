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
Library     python/MockTelnet.py    # add newline and encoding parameters
Library     python/MockRemote.py    # add uri parameter and name the library EmbeddedAPI
Library     python/MockRemote.py    # add uri parameter and name the library DeviceAPI


*** Variables ***
${USERNAME}     user
${PASSWORD}     pass
${HOST}         localhost
${PORT}         22


*** Test Cases ***
Test Using Telnet
    [Documentation]    This test case demonstrates how to configure a library import using arguments.
    No Operation
    # Open Telnet Connection
    # Login User
    # Read Until Prompt
    # Log Prompt
    # Close Telnet Connection

Test Using EmbeddedAPI
    [Documentation]    This test case demonstrates how to configure a library import using arguments.
    No Operation
    # Open EmbddedAPI Connection
    # Login User
    # Read Until Prompt
    # Log Prompt
    # Close EmbddedAPI Connection

Test Using DeviceAPI
    [Documentation]    This test case demonstrates how to configure a library import using arguments.
    No Operation
    # Open DeviceAPI Connection
    # Login User
    # Read Until Prompt
    # Log Prompt
    # Close DeviceAPI Connection
