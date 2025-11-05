*** Comments ***
[K2] Understand the purpose and basic concept of the BREAK and CONTINUE statements


*** Settings ***
Library     Collections


*** Variables ***
@{elements}             element1    element2    element3    target_element    element5
${target_element}       target_element

&{participant_1}        name=Alice    age=23
&{participant_2}        name=Bob    age=42
&{participant_3}        name=Charlie    age=33
&{participant_4}        name=Pekka    age=44
@{participants}         ${participant_1}    ${participant_2}    ${participant_3}    ${participant_4}


*** Test Cases ***
Scroll Down Until Element Visible
    [Documentation]    This test case simulates scrolling down until a target element is visible.
    VAR    ${index}    ${0}
    WHILE    True
        ${current_element}    Get From List    ${elements}    ${index}
        Log    Current element: ${current_element}
        IF    '${current_element}' == '${target_element}'
            Log    Target element is visible: ${current_element}
            BREAK
        END
        VAR    ${index}    ${index + 1}
    END
    Log    Scrolling completed.

Find Older Participants
    ${older_participants}    Get Older Participants    ${participants}    40
    Should Be Equal    ${older_participants}[0][name]    Bob
    Should Be Equal    ${older_participants}[1][name]    Pekka


*** Keywords ***
Get Older Participants
    [Arguments]    ${participants}    ${minimum_age}
    VAR    @{older_participants}    # Creates an empty list
    FOR    ${participant}    IN    @{participants}    # Iterates over all participants
        # Skips the remaining part of the loop if age is below the minimum
        IF    ${participant.age} < ${minimum_age}    CONTINUE
        Log    Participant ${participant.name} is older than 40    # Logs participant name if age is above the minimum
        Append To List    ${older_participants}    ${participant}    # BuiltIn keyword to append a value to a list
    END
    RETURN    ${older_participants}

Break With For
    [Arguments]    ${participants}    ${minimum_age}
    FOR    ${participant}    IN    @{participants}
        IF    ${participant.age} < ${minimum_age}    BREAK
    END
