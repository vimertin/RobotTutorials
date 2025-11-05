*** Comments ***
[K2] Understand the purpose and basic concept of FOR Loops


*** Variables ***
@{fruits}     apple    banana    cherry
@{letters}    a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z
@{First Name}       Bruce    Steve    Peter
@{Last Name}        Banner    Rogers    Parker


*** Test Cases ***
Process Fruit List
    Log    Processing in FOR Loop
    FOR    ${fruit}    IN    @{fruits}
        Log    Processing: ${fruit}
    END

Process Fruits Separately
    Log    Processing by index
    Log    Processing: ${fruits[0]}
    Log    Processing: ${fruits[1]}
    Log    Processing: ${fruits[2]}

Loop With Index Over Letters
    Log    Lists the Alphabeth
    FOR    ${index}    ${letter}    IN ENUMERATE    @{letters}
        Log    The ${index + 1}. letter is ${letter}
    END

Iterate Over Range 
    Log    Counting to 9
    FOR    ${num}    IN RANGE    10
        Log   ${num}
    END

Combination Of Two Loops
    Log    Full Names:
    FOR    ${first}    ${last}    IN ZIP    ${First Name}    ${Last Name}
        Log    ${first} ${last}
    END
