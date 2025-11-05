*** Variables ***
${MESSAGE}    Hello, this is a message from the central keywords resource.

*** Keywords ***
Log Central Message
    Log    ${MESSAGE}
