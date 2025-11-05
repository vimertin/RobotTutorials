*** Comments ***
[K2] Understand how to set and access data in dict variables


*** Variables ***
&{USER1}                name=Matti    address=xxx    phone=123
&{USER2}                name=Teppo    address=yyy    phone=456
&{ESCAP_EQUAL_SIGN}     key=\=key    value=\=value
&{COMBINED}             first=1    second=${2}    third=third
&{EMPTY_DICT}           &{EMPTY}
&{DICT_IN_DICT}         user1=${USER1}    user2=${USER2}


*** Test Cases ***
Dict Example
    [Documentation]    Access to various elements of the dictionary examples

    Log    User1 Name: ${USER1}[name]    # Logs 'User1 Name: Matti'
    Log    User2 Phone: ${USER2}[phone]    # Logs 'User2 Phone: 456'
    Log    Escaped Value: ${ESCAP_EQUAL_SIGN}[value]    # Logs 'Escaped Value: =value'
    Log    Combined Second: ${COMBINED}[second]    # Logs 'Combined Second: 2'
    Log    Empty Dict: ${EMPTY_DICT}    # Logs 'Empty Dict: {}'
    Log    Dict in Dict: ${DICT_IN_DICT}    # Logs 'Dict in Dict:
    # ...    {'user1': {'name': 'Matti', 'address': 'xxx', 'phone': '123'},
    # ...    'user2': {'name': 'Teppo', 'address': 'yyy', 'phone': '456'}}'
    Log    User1 in Dict in Dict: ${DICT_IN_DICT}[user1]    # Logs 'User1 in Dict in Dict:
    # ...    {'name': 'Matti', 'address': 'xxx', 'phone': '123'}'
    Log    User2 in Dict in Dict: ${DICT_IN_DICT}[user2]    # Logs 'User2 in Dict in Dict:
    # ...    {'name': 'Teppo', 'address': 'yyy', 'phone': '456'}'
    Log    User1 Name in Dict in Dict: ${DICT_IN_DICT}[user1][name]    # Logs 'User1 Name in Dict in Dict: Matti'
    Log    User2 Phone in Dict in Dict: ${DICT_IN_DICT}[user2][phone]    # Logs 'User2 Phone in Dict in Dict: 456'
