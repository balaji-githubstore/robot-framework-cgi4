*** Settings ***
Library    DateTime
Library     OperatingSystem

*** Test Cases ***
TC1
    ${current_date}  Get Current Date
    Log To Console    ${current_date}
    
TC2
    Create Directory    path=D:\\help
    Sleep    5s
    Remove Directory    path=D:\\help

TC3
    @{files}     List Files In Directory    path=D:\\
    Log To Console    ${files}
    Log To Console    ${files}[0]






