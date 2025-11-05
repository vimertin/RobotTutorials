*** Comments ***
[K3] Understand and apply the mechanics of indentation and separation in Robot Framework.

Task for Learners:

1. Fix the Indentation and Separation issues:
    1.1. Correct the indentation and separation issues in this file, starting from the *** Settings *** section.
    1.2. Ensure that each line follows the proper syntax for indentation and separation.

2. Run the Test Cases:
    2.1. Execute the two test cases below and analyze the results. Do both test cases pass, or are there still issues?


*** Settings ***
Documentation    This is the first line of documentation.

Resource         resources/keywords.resource


*** Test Cases ***
Test Case Name One
    Keyword Call With Arguments    argument one    argument two
    Keyword Call With Arguments    argument one    argument two    
    Keyword Call
    ${variable_assignment}    Keyword Getter Call

Test Case Name Two
    Connect To Server
    Login Admin
    Print Connection Details
    Print All Users
    Close Server Connection
