*** Comments ***
[K3] Create variables in the Variables section
[K3] Use the correct variable prefixes for assigning and accessing variables

Task for Learners:

1. Create and Assign Variables:
    1.1. Define the following variables in the *** Variables *** section: a scalar variable, a list variable and a dictionary variable.
    1.2. Use the variables in test cases and keywords to log their values.

2. Run the Test Case:
    2.1. Execute the test case and analyze the results. Did you assign the variables correctly?



*** Variables ***
${GREETING}    Hello!
@{ITEMS}    item1    item2    item3
&{USER_INFO}    name=user    password=pass


*** Test Cases ***
Exercise: Log Variables
    Log Variables


*** Keywords ***
Log Variables
    [Documentation]    Logs the values of the variables defined in the Variables section.
    Log    Greeting: ${GREETING}
    Log    Items: ${ITEMS}
    Log    User Info: ${USER_INFO}
