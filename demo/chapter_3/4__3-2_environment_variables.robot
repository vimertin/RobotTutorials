*** Comments ***
This is an example of an environment variable.


*** Settings ***
Library    OperatingSystem


*** Test Cases ***
Log Environment Variable
    Log    %{USER}

Log Default Value Environment Variable
    Log    %{GREETING=Hello}

Set And Remove Environment Variable
    Set Environment Variable    ROBOT_RUNNING    true
    Log    %{ROBOT_RUNNING}
    Remove Environment Variable    ROBOT_RUNNING
