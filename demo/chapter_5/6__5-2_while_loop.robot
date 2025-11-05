*** Comments ***
[K2] Understand the purpose and basic concept of WHILE Loops


*** Test Cases ***
Count Down Until Zero
    [Documentation]    This test case demonstrates a WHILE loop with negation.
    VAR    ${counter}    ${5}
    WHILE    not ${counter} == 0
        Log    Counter at: ${counter}
        VAR    ${counter}    ${counter - 1}
    END
    Log    Counter reached zero!

Use Limit In While Loop
    [Documentation]    This test case demonstrates a WHILE loop with a limit.
    WHILE    True    limit=5x
        Log    Robot!
    END

Continue When Iteration Is Reached
    [Documentation]    This test case demonstrates a WHILE loop with a limit and on_limit action.
    WHILE    True    limit=5x    on_limit=pass
        Log    Hello!
    END
    Log    Goodbye!
