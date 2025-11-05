*** Comments ***
Task for Learners:
    1. Save test execution time by using test templates.
    2. Transfer the test cases into data-driven test cases and make use of setup and teardown.
    3. Compare the test execution time of your solution with the previous implementation. How much time did you manage to save?


*** Settings ***
Resource    resources/keywords.resource


*** Test Cases ***
Create User Peter Parker
    Connect to Server
    Login Admin
    Create New User    name=Peter Parker    login=spider    password=123spiderman321    right=user
    Logout User
    Close Server Connection

Create User Bruce Banner
    Connect to Server
    Login Admin
    Create New User    name=Bruce Banner    login=hulk    password=Hulk...SMASH!    right=user
    Logout User
    Close Server Connection

Create User Tony Stark
    Connect to Server
    Login Admin
    Create New User    name=Tony Stark    login=ironman    password=1234567890    right=user
    Logout User
    Close Server Connection

Create User Stephen Strange
    Connect to Server
    Login Admin
    Create New User    name=Stephen Strange    login=dr.strange    password=1234567890    right=user
    Logout User
    Close Server Connection

Create User Steve Rogers
    Connect to Server
    Login Admin
    Create New User    name=Steve Rogers    login=captain    password=abcasd123456    right=user
    Logout User
    Close Server Connection

Create User Natasha Romanoff
    Connect to Server
    Login Admin
    Create New User    name=Natasha Romanoff    login=blackwidow    password=1234567890    right=user
    Logout User
    Close Server Connection

Create User Clint Barton
    Connect to Server
    Login Admin
    Create New User    name=Clint Barton    login=hawkeye    password=1234567890    right=user
    Logout User
    Close Server Connection

Create User Carol Danvers
    Connect to Server
    Login Admin
    Create New User    name=Carol Danvers    login=captainmarvel    password=1234567890    right=user
    Logout User
    Close Server Connection

Create User Peter Quill
    Connect to Server
    Login Admin
    Create New User    name=Peter Quill    login=starlord    password=1234567890    right=user
    Logout User
    Close Server Connection
