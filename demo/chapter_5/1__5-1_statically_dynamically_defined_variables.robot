*** Comments ***
[K2] Understand the difference between statically defined and dynamically created variables in Robot Framework


*** Variables ***
${STATICVAR}    Hello!


*** Test Cases ***
Test With Statically Defined Variable
    Log    ${STATICVAR}

Test With Global Variable Via Command Line
    # run robot --variable name:Robot demo/chapter\ 5/5.1\ advanced\ variables/lo-5-1-1.robot
    Log    ${name}

Test With Dynamcally Created Variable
    ${say_something}    Say Hello
    Log    ${say_something}
    ${say_something}    Say Goodbye
    Log    ${say_something}


*** Keywords ***
Say Hello
    VAR    ${hello}    Hello!
    RETURN    ${hello}

Say Goodbye
    VAR    ${goodbye}    Goodbye!
    RETURN    ${goodbye}
