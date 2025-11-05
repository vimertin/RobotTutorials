*** Comments ***
[K2] Understand the concept of how to set argument values positionally.
[K2] Understand the concept of named arguments and how to set argument values by their name. 

*** Settings ***
Library     Process
Library     python/Coordinates.py
Resource    resources/keywords.resource


*** Test Cases ***
Login User With Password
    [Documentation]    Test case shows setting arguments positionally in the order
    ...    they are defined in the keyword documentation
    Connect To Server
    Login User    ironman    1234567890
    Verify Valid Login    Tony Stark

Click On X And Y
    [Documentation]    Test case shows that only using positional arguments can lead
    ...    to poor readability. Using named arguments can improve explicit understanding.
    Click On Coordinates    82    70    # setting arguments positionally
    ${coordinates}    Get Coordinates
    Log    ${coordinates}

    Click On Coordinates    x=42    y=4711    # setting same arguments by name
    ${coordinates}    Get Coordinates
    Log    ${coordinates}

Run Process Without CLI Arguments
    [Documentation]    Setting only the mandatory argument for the keyword.
    ${whoami}    Run Process    command=whoami
    Log    ${whoami.stdout}

Run Process With CLI Arguments
    [Documentation]    The given value 'ping' is assigned to the 'command' argument.
    ...    all following values are collected into the 'arguments' argument.
    ${ping}    Run Process    ping    -c    2    127.0.0.1
    Log    ${ping.stdout}
