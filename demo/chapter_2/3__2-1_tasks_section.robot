*** Comments ***
[K2] Understand the purpose of the *** Test Cases *** or *** Tasks *** section.


*** Tasks ***
Task Name
    [Setup]    Setup The Task
    Keyword Call Without Arguments
    Keyword Call With Embedded Argument
    [Teardown]    Teardown The Task


*** Keywords ***
Setup The Task
    Log    Task successfully set up!

Teardown The Task
    Log    Task successfully teared down!

Keyword Call Without Arguments
    Log    I don't need Arguments

Keyword Call With ${arguments}
    Log    I need ${arguments}
