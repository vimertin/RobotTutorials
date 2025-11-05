*** Comments ***
[K3] Create and assign scalar variables

Task for Learners:

1. Create and Assign Scalar Variables:
    1.1. Create three scalar variables with different names in the *** Variables *** section.
    1.2. Assign a value to each variable. In the third variable, use the value of a previously assigned variable.
    1.3 Use the created variables in the test case to log their values by using the Log keyword.

2. Run the Test Case:
    2.1. Execute the test case and analyze the results. Did you assign the variables correctly?


*** Variables ***
${NAME}    Robot Framework
${VERSION}    8.0
${TOOL}    ${NAME}, version: ${VERSION}


*** Test Cases ***
Log Variables
    [Documentation]    This test case logs the values of the created variables.
    Log    ${NAME}
    Log    ${VERSION}
    Log    ${TOOL}
