*** Comments ***
[K2] Understand when an element is marked as PASS.

Run the tests and inspect the execution artifacts to see how atomic and composite elements pass / fail.


*** Test Cases ***
All Atomic Elements Pass
    Should Be Empty    ${EMPTY}
    Should Be Equal As Integers    42    42
    Should Be True    ${1}

Composite Element Passes With Elements Passing
    Atomic Element That Passes
    Another Atomic Element That Passes

Composite Element Passes With Elements Not Passing
    Atomic Element That Passes
    Atomic Element That Is Expected To Fail


*** Keywords ***
Atomic Element That Passes
    RETURN    I Do PASS

Another Atomic Element That Passes
    RETURN    I do PASS as well

Atomic Element That Is Expected To Fail
    Run Keyword And Expect Error    *    Fail    I am expected to fail
