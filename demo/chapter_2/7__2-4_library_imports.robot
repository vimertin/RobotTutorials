*** Comments ***
[K2] Understand the different types of paths that can be used to import libraries and resource files.


*** Settings ***
Library     OperatingSystem
Library     ../../resources/python/CustomLibrary.py    # Relative path with path traversal
Library     ${EXECDIR}/demo/chapter_2/resources/AnotherLibrary.py  # Absolute path


*** Test Cases ***
Example Test Case
    [Documentation]    This test case demonstrates importing libraries and resource files
    ...    using different types of paths.
    Keyword From CustomLibrary
    Keyword From AnotherLibrary


*** Keywords ***
Keyword From CustomLibrary
    [Documentation]    This keyword is defined in CustomLibrary.py.
    CustomLibrary.Connect    192.168.1.1
    ${conn_details}    CustomLibrary.Get Connection Details
    Log    ${conn_details}

Keyword From AnotherLibrary
    [Documentation]    This keyword is defined in AnotherLibrary.py.
    ${return}    AnotherLibrary.Keyword From Another Library
    Log    ${return}

