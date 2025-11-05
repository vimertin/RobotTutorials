*** Comments ***
[K2] Understand the purpose and basic concept of IF-Statements


*** Test Cases ***
Test Status Verification
    Verify Status    SUCCESS
    Verify Status    NO SUCCESS

Test Score Evaluation
    Evaluate Score    91
    Evaluate Score    90
    Evaluate Score    89
    Evaluate Score    80
    Evaluate Score    79
    Evaluate Score    0

Test Quick Verification
    Verify User    Admin
    Verify User    User
    Verify User    Anonymous


*** Keywords ***
Verify Status
    [Arguments]    ${status}
    IF    '${status}' == 'SUCCESS'
        Log    Operation was successful.
    END

Evaluate Score
    [Arguments]    ${score}
    IF    ${score} >= 90
        Log    Grade A
    ELSE IF    ${score} >= 80
        Log    Grade B
    ELSE
        Log    Grade C or below
    END

Verify User
    [Arguments]    ${user}
    IF    '${user}' == 'Admin'    Log    Admin access granted.
