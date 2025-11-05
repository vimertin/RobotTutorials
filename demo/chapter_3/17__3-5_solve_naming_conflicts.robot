*** Comments ***
[K2] Explain how naming conflicts can happen and how to mitigate them.


*** Settings ***
Library    libraries/LibraryA.py
Library    libraries/LibraryB.py

*** Variables ***
${IP}    192.168.1.1


*** Test Cases ***
Test With Library A
    LibraryA.Connect To Server    ${IP}
    LibraryA.Print Message
    LibraryA.Disconnect

Test With Library B
    LibraryB.Connect To Server    ${IP}
    LibraryB.Print Message
    LibraryB.Disconnect
