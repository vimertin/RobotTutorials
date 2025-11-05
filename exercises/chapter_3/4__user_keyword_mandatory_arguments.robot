*** Comments ***
[K3] Define User Keywords with mandatory arguments.

Task for Learners:

    1. Implement the keyword with mandatory arguments:
        1.1. Define two mandatory arguments.
        1.2. Use keywords from the OperatingSystem and BuiltIn Libraries.
        Hint: Some of the following keywords might be helpful: 
            OperatingSystem: Get Binary File, Get File, Log File, Get File Size
            BuiltIn: Should Contain, Should Contain X Times, Should Not Contain, Should Be Equal, Should Start With
    2. Use the keyword in the test case to verify their functionality.
        2.1. In ${CURDIR}/server/logs/ there are two different log files, use them in the test case.


*** Settings ***
Library     OperatingSystem


*** Test Cases ***
Exercise: Keywords With Mandatory Arguments
    [Documentation]    This exercise demonstrates how to create keywords with mandatory arguments.
    No Operation
    # Add your test steps here


*** Keywords ***
Verify File Contains
    [Documentation]    Verifies that a file contains a specific text.
    ...
    ...    The keyword opens the file specified by the file path and checks if it contains the expected content.
    # Add your Arguments here
    No Operation
    # Add your keyword steps here
