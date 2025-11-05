*** Comments ***
[K2] Understand how to read keyword documentation and how to interpret the examples.


*** Test Cases ***
Builtin Keyword Documentation
    [Documentation]    This test case demonstrates how to read keyword documentation and interpret examples.
    Should Be Equal    expected    expected
    Run Keyword And Continue On Failure
    ...    Should Be Equal
    ...    not expected
    ...    expected
    ...    Custom error message
    Run Keyword And Continue On Failure
    ...    Should Be Equal
    ...    not expected
    ...    expected
    ...    Custom message
    ...    values=False
    Should Be Equal    ExPeCtEd    expected    ignore_case=True    formatter=repr

User Keyword Documentation
    [Documentation]    This test case demonstrates how to create your own keyword documentation.
    Example Keyword    arg1


*** Keywords ***
Example Keyword
    [Documentation]    This keyword demonstrates how to document a keyword.
    ...    ${arg1} is the first argument.
    ...    ${arg2} is the second argument with a default value.
    ...    Example usage:
    ...    | Example Keyword | value1 | value2 |
    ...    | Example Keyword | value1 |
    [Arguments]    ${arg1}    ${arg2}=default_value
    Log    ${arg1}, ${arg2}
