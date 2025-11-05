*** Comments ***
Task for Learners:
    1. Save test execution time by using test templates.
    2. Transfer the test cases into data-driven test cases and make use of setup and teardown.
    3. Compare the test execution time of your solution with the previous implementation. How much time did you manage to save?


*** Settings ***
Resource         resources/keywords.resource

Test Template    Create New User

Suite Setup       Connect To Server And Login Admin
Suite Teardown    Close Server Connection


*** Test Cases ***              NAME                LOGIN            PASSWORD            RIGHT
Create User Peter Parker        Peter Parker        spider           123spiderman321     user
Create User Bruce Banner        Bruce Banner        hulk             Hulk...SMASH!       user
Create User Tony Stark          Tony Stark          ironman          1234567890          user
Create User Stephen Strange     Stephen Strange     dr.strange       1234567890          user
Create User Steve Rogers        Steve Rogers        captain          abcasd123456        user
Create User Natasha Romanoff    Natasha Romanoff    blackwidow       1234567890          user
Create User Clint Barton        Clint Barton        hawkeye          1234567890          user
Create User Carol Danvers       Carol Danvers       captainmarvel    1234567890          user
Create User Peter Quill         Peter Quill         starlord         1234567890          user


*** Keywords ***
Connect To Server And Login Admin
    Connect to Server
    Login Admin

Logout User And Close Server Connection
    Logout User
    Close Server Connection