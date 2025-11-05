*** Comments ***
[K2] Understand the difference between log messages and console output.


*** Test Cases ***
Demonstrate Console Output
    Log To Console    This is a console output message.

Demonstrate Log
    Log    This is an INFO level log message.
    Log    This is a DEBUG level log message.    DEBUG
    Log    This is a TRACE level log message.    TRACE
    Log    This is a WARN level log message.    WARN
    Log    This is an ERROR level log message.    ERROR
