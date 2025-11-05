*** Comments ***
[K2] Understand how transitive imports of resource files and libraries work.


*** Settings ***
Resource    resources/business_keywords.resource


*** Test Cases ***
Login Hulk
    Connect To Server
    Login With Valid Credentials    hulk    Hulk...SMASH!    Bruce Banner
