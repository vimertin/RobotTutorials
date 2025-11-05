*** Comments ***
[K2] Understand the different types of paths that can be used to import libraries and resource files.


*** Settings ***
Resource    resources/keywords.resource    # Relative path from PYTHONPATH
Resource    E:/robot/robotframework-RFCP-tutorials/demo/chapter_2/resources/other_keywords.resource
# Resource    ${CURDIR}/resources/other_keywords.resource    # Alternative absolute path


*** Keywords ***
Keyword From Keywords Resource
    [Documentation]    This keyword is defined in keywords.resource.
    keywords.Connect To Server
    keywords.Login Admin

Keyword From Another Keywords Resource
    [Documentation]    This keyword is defined in another_keywords.resource.
    other_keywords.Keyword From Another Keywords Resource
