*** Comments ***
[K2] Understand how to filter tests|tasks using the command-line interface of Robot Framework

Including Tests|Tasks by Tags
    robot --include smoke path/to/tests

Excluding Tests|Tasks by Tags
    robot --exclude slow path/to/tests

Combining Include and Exclude Options
    robot --include regression --exclude unstable path/to/tests

Using Tag Patterns
    robot --include feature-* path/to/tests
    robot --exclude *-deprecated path/to/tests

Reserved Tags
    robot:exclude
    robot:skip


*** Test Cases ***
Smoke Test
    [Documentation]    This is a smoke test.
    [Tags]    smoke
    Log    Running Smoke Test

Regression Test
    [Documentation]    This is a regression test.
    [Tags]    regression
    Log    Running Regression Test

Slow Test
    [Documentation]    This is a slow test.
    [Tags]    slow
    Log    Running Slow Test

Unstable Test
    [Documentation]    This is an unstable test.
    [Tags]    unstable
    Log    Running Unstable Test

Feature Test
    [Documentation]    This is a feature test.
    [Tags]    feature-new
    Log    Running Feature Test

Deprecated Test
    [Documentation]    This is a deprecated feature test.
    [Tags]    feature-deprecated
    Log    Running Deprecated Feature Test
