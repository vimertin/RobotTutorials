*** Comments ***
[K2] Understand when an element is marked as FAIL.

Run the test cases and inspect the execution artifacts to see how atomic and composite elements pass / fail


*** Test Cases ***
All Atomic Elements Fail
    Should Be Empty    Not Empty
    Should Be Equal As Integers    42    4711
    Should Be True    ${0}

Composite Element Fails With Elements Passing
    Atomic Element That Passes
    Atomic Element That Fails
    Atomic Element That Passes

Composite Element Fails With Elements Failing
    Atomic Element That Fails
    Another Atomic Element That Fails

Composite Element Passes With Elements Failing
    Atomic Element That Passes
    Run Keyword And Ignore Error    Atomic Element That Fails


*** Keywords ***
Atomic Element That Passes
    RETURN    I do PASS

Atomic Element That Fails
    Fail

Another Atomic Element That Fails
    Fail
