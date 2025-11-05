*** Comments ***
[K2] Understand how to set and access data in list variables


*** Variables ***
@{NAMES}            Matti    Teppo
@{EMPTY_LIST}       @{EMPTY}
@{NUMBERS}          one    two    three
...                 four    five    six
@{MORE_NUMBERS}     seven    eight    nine
@{LIST_IN_LIST}     ${NUMBERS}    ${MORE_NUMBERS}


*** Test Cases ***
Log More Numbers
    Log Many    @{MORE_NUMBERS}

List Example
    [Documentation]    Access to various elements of the list examples
    Log    First Name: ${NAMES}[0]    # Logs 'First Name: Matti'
    Log    Second Name: ${NAMES}[1]    # Logs 'Second Name: Teppo'
    Log    Empty List: ${EMPTY_LIST}    # Logs 'Empty List: []'
    Log    Numbers: ${NUMBERS}    # Logs 'Numbers: ['one', 'two', 'three', 'four', 'five', 'six']'
    Log    Number Four: ${NUMBERS}[3]    # Logs 'Number Four: four'
    Log    List in List: ${LIST_IN_LIST}    # Logs 'List in List:
    # ...    [['one', 'two', 'three', 'four', 'five', 'six'], ['seven', 'eight', 'nine']]'
    Log    First List in List: ${LIST_IN_LIST}[0]    # Logs 'First List in List:
    # ...    ['one', 'two', 'three', 'four', 'five', 'six']'
    Log    Second List in List: ${LIST_IN_LIST}[1]    # Logs 'Second List in List: ['seven', 'eight', 'nine']'
    Log    First Element of First List: ${LIST_IN_LIST}[0][0]    # Logs 'First Element of First List: one'
    Log    Third Element of Second List: ${LIST_IN_LIST}[1][2]    # Logs 'Third Element of Second List: nine'
