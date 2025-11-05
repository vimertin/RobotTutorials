*** Comments ***
[K2] Explain how naming conflicts can happen and how to mitigate them.


*** Settings ***
Library    libraries/LibraryA.py
Library    libraries/LibraryB.py

*** Variables ***
${IP}    192.168.1.1


*** Test Cases ***
Test With Naming Conflicts
    Connect To Server    ${IP}
    Print Message
    Disconnect
