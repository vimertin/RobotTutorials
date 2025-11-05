*** Comments ***
[K2] Understand the role of embedded arguments in Behavior-Driven Development (BDD) style.


*** Settings ***
Library     Collections
Library     OperatingSystem


*** Variables ***
${LOG_DIR}          ${CURDIR}/server/logs/
&{ANIMAL_LIST}      cats=2    dogs=3


*** Test Cases ***
Test File Content
    Given The Server Log Level Is 'INFO'
    When The Server Is Started Successfully
    Then The File 'server.log' Should Contain 'Successfully started'

Embedded And Normal Arguments
    Given The User Is On The Pet Selection Page
    When The User adds    2    cats
    And The User sets    4    dogs
    And The User removes    1    dogs
    Then The Number Of cats Should Be    4
    And The Number Of dogs Should Be    3


*** Keywords ***
The Server Log Level Is '${level}'
    Log    Setting server log level to ${level}

The Server Is Started Successfully
    Log    Server started successfully

The File '${file_name}' Should Contain '${expected_content}'
    ${file_content} =    Get File    ${LOG_DIR}${file_name}
    Should Contain    ${file_content}    ${expected_content}

The User Is On The Pet Selection Page
    Log    User is on the pet selection page

The User ${action}
    [Arguments]    ${amount}    ${animal}
    IF    '${action}' == 'adds'
        Add Items To List    ${animal}    ${amount}
    ELSE IF    '${action}' == 'removes'
        Remove Items From List    ${animal}    ${amount}
    ELSE IF    '${action}' == 'sets'
        Set Amount To List    ${animal}    ${amount}
    ELSE
        Skip    Test skipped due to invalid action
    END

The Number Of ${animals} Should Be
    [Arguments]    ${count}
    ${current_count} =    Get Animal Count    ${animals}
    Should Be Equal As Numbers    ${current_count}    ${count}

Add Items To List
    [Arguments]    ${animal}    ${amount}
    Log    Adding ${amount} ${animal}
    ${current_amount} =    Set Variable If    '${animal}' in ${ANIMAL_LIST}    ${ANIMAL_LIST['${animal}']}
    ${new_amount} =    Evaluate    ${current_amount} + ${amount}
    Set To Dictionary    ${ANIMAL_LIST}    ${animal}    ${new_amount}
    Log    Updated ${animal} count to ${new_amount}

Remove Items From List
    [Arguments]    ${animal}    ${amount}
    Log    Removing ${amount} ${animal}
    ${current_amount} =    Set Variable If    '${animal}' in ${ANIMAL_LIST}    ${ANIMAL_LIST['${animal}']}
    ${new_amount} =    Evaluate    ${current_amount} - ${amount}
    Set To Dictionary    ${ANIMAL_LIST}    ${animal}    ${new_amount}
    Log    Updated ${animal} count to ${new_amount}

Set Amount To List
    [Arguments]    ${animal}    ${amount}
    Log    Setting ${amount} ${animal}
    Set To Dictionary    ${ANIMAL_LIST}    ${animal}    ${amount}
    Log    Updated ${animal} count to ${amount}

Get Animal Count
    [Arguments]    ${animal}
    Log    Getting count for ${animal}
    ${animal_count} =    Set Variable If    '${animal}' in ${ANIMAL_LIST}    ${ANIMAL_LIST['${animal}']}
    RETURN    ${animal_count}
