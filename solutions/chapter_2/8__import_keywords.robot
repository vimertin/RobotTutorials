*** Comments ***
[K3] Use resource files to import new keywords.

Create Resource Files:

Task for Learners:
    1. Create one or more resource file/s containing the missing test case keywords.
    
    2. Define the Missing Keywords in Resource Files:
        2.1. Implement Log Local Message Keyword
        2.2. Implement Log Central Message Keyword

    3. Import Resource File/s:
        3.1. Ensure the resource files are imported correctly in the test suite using
        the Resource setting in the *** Settings *** section.

    4. Run the Test Cases:
        4.1. Run the test cases in this file. Did all tests pass?


*** Settings ***
Resource    local_keywords.resource
Resource    resources/central_keywords.resource


*** Variables ***
${MESSAGE}      Hello from the test suite!


*** Test Cases ***
Test Log Local Message
    [Documentation]    This test cases uses local variables
    Log    ${MESSAGE}

Test Keyword from Local Resource
    [Documentation]    This test case uses a keyword from the local resource file.
    Log Local Message

Test Keyword from Central Resource
    [Documentation]    This test case uses a keyword from the central resource file.
    Log Central Message
