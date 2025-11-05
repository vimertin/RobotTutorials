*** Comments ***
[K2] Understand how local and suite scope variables are created


*** Variables ***
${SUITE_VAR}    Suite Level Variable


*** Test Cases ***
Test Local Scope
    [Documentation]    This test case demonstrates the use of local scope variables.
    VAR    ${local_var}    Local Level Variable
    Log    Local Variable: ${local_var}
    Log    Suite Variable: ${SUITE_VAR}
    Call Keyword With Local Variable    ${local_var}

Test Suite Scope
    [Documentation]    This test case demonstrates the use of suite scope variables.
    Log    Suite Variable: ${SUITE_VAR}
    Call Keyword With Suite Variable


*** Keywords ***
Call Keyword With Local Variable
    [Documentation]    This keyword demonstrates accessing a local variable passed as an argument.
    [Arguments]    ${local_var}
    Log    Local Variable in Keyword: ${local_var}

Call Keyword With Suite Variable
    [Documentation]    This keyword demonstrates accessing a suite scope variable.
    Log    Suite Variable in Keyword: ${SUITE_VAR}

Set Variables With Scopes
    VAR    ${local_variable}    local value
    VAR    ${TEST_VARIABLE}    test value    scope=TEST
    VAR    ${SUITE_VARIABLE}    suite value    scope=SUITE
    VAR    ${GLOBAL_VARIABLE}    global value    scope=GLOBAL
