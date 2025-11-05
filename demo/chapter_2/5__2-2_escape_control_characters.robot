*** Comments ***
[K2] Understand how to escape control characters in Robot Framework.


*** Test Cases ***
Test Of Escaping
    Log    \# leading hash.    # This logs "# leading hash."
    Log    \ lead & trail \    # This logs " lead & trail "
    Log    ${SPACE}and now 5 More: \ \ \ \ \    # This logs " and now 5 More:    "
    Log    Not a \${variable}    # This logs "Not a ${variable}"
    Log    C:\\better\\use\\forward\\slashes    # This logs "C:\better\use\forward\slashes"
