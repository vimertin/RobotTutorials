*** Settings ***
Resource    resources/keywords.resource


*** Test Cases ***
Verify Login Test
    Connect To Server
    Login Hulk
    Verify Valid Login    Bruce Banner
    Close Server Connection


*** Keywords ***
Login Hulk
    Login User    hulk    Hulk...SMASH!



