*** Comments ***
[K2] Understand the concept of mandatory arguments and how they are documented.
[K2] Understand the concept of optional arguments and how they are documented.


*** Test Cases ***
Tests Will Pass
    [Documentation]    This test passes
    Should Be Equal    One    One

Test Will Fail
    [Documentation]    This test fails, due to inequality
    Should Be Equal    One    Two

Test Will Fail Due to Missing Args
    [Documentation]    This test fails, due to missing mandatory argument
    Should Be Equal    One

Test Will Pass Due To Optional Argument
    [Documentation]    This test passes, due to optional argument
    Should Be Equal    One    oNe    ignore_case=True
