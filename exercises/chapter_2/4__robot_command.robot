*** Comments ***
[K2] Understand how to run the robot command and its basic usage.

robot is the main executable that is used to execute suites.
rebot (not part of this syllabus) is used to post-process execution results and generate reports.
libdoc (not part of this syllabus) is used to generate keyword documentation for libraries and resource files.

Execute this test by issuing the following command in your terminal (from the projects root directory):

robotframework-RFCP-tutorials ❯
...    robot -d results exercises/chapter_2/4__robot_command.robot


*** Settings ***
Documentation       A suite for valid and invalid login tests.
...
...                 Keywords are imported from the resource file.

Resource            resources/keywords.resource


*** Test Cases ***
Login User With Password
    Connect To Server
    Login User    ironman    1234567890    # Login with valid credentials
    Verify Valid Login    Tony Stark    # Verify that the login was successful by checking the user name
    Close Server Connection

Denied Login With Wrong Password
    Connect To Server
    Run Keyword And Expect Error    # this keyword calls another keyword and expects an error
    ...    *Invalid Password*    # it expects an error containing `Invalid Password`
    ...    Login User    # this keyword is called with two arguments
    ...    ironman
    ...    123#wrong    # A hash in the middle of a string is not a comment
    Verify Unauthorized Access
    Close Server Connection
