*** Comments ***
[K3] Understand and apply the mechanics of indentation and separation in Robot Framework.

Task for Learners:

1. Fix the Indentation and Separation issues:
    1.1. Correct the indentation and separation issues in this file, starting from the *** Settings *** section.
    1.2. Ensure that each line follows the proper syntax for indentation and separation.

2. Run the Test Cases:
    2.1. Execute the two test cases below and analyze the results. Do both test cases pass, or are there still issues?

3. Bonus:
    3.1. Open the file lo-2-2-1_bonus.robot and fix the indentation and separation issues accordingly.

*** Settings ***
Documentation    This is the first line of documentation.

Resource resources/keywords.resource


*** Test Cases ***
Test Case Name One
Keyword Call
    Keyword    Call
  ${variable_assignment} KeywordCall

Test Case Name Two
Keyword Call With Arguments    argument one    argument two
    Keyword Call With Arguments argument one    ...    argument two
    ${variable_assignment} Keyword Getter Call
