*** Comments ***
[K2] Understand when Test|Task Setup is executed and used


*** Settings ***
Resource         resources/keywords.resource

Test Setup       Login As Standard User
Test Teardown    Logout User


*** Test Cases ***
User Action Test With Default Setup    # Default Test Setup is applied
    Perform User Action    0815

Another User Action With Default Setup    # Default Test Setup is applied
    Perform User Action    4711

Admin Access Test With Local Setup
    [Setup]    Login As Admin    # Override the default setup
    Perform Admin Action    007

No Setup No Teardown Test
    [Setup]    NONE    # Override and disable the setup by case-sensitive NONE
    Perform Action Without Login    000
    [Teardown]    NONE    # Override and disable the teardown by case-sensitive NONE

