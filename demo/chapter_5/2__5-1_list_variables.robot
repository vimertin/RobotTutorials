*** Comments ***
[K1] Recall that assignments to @{list} variables convert values to lists automatically

Run the test and look at the results in the log.
Show the learners the log.html and take a look at the list variables.


*** Settings ***
Library     python/CustomLibrary.py


*** Variables ***
@{users}        Alice    Bob    Charlie
${ADMIN}        admin
${PASSWORD}     @RBTFRMWRK@


*** Test Cases ***
Log List Variables
    Log Many    Alice    Bob    Charlie    # logs three entries:    "Alice", "Bob", and "Charlie"
    Log Many    @{users}    # logs three entries:    "Alice", "Bob", and "Charlie"
    Log Many    ${users}    # logs one entry:    “['Alice', 'Bob', 'Charlie']“

Test With List Variables
    Connect    fe80::aede:48ff:fe00:1122
    Get Connection Details
    Login Admin User
    @{all_users}    Get All Users    # Returns a list of user-dictionaries
    ${all_users_2}    Get All Users    # Returns a list of user-dictionaries
    Disconnect


*** Keywords ***
Login Admin User
    Set Login Name    ${ADMIN}
    Set Password    ${PASSWORD}
    Execute Login
