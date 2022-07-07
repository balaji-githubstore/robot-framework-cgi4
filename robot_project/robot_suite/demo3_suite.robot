*** Variables ***
${BROWSER_NAME}     chrome
@{COLORS}      red      green      yellow
&{my_detail}    name=john   mobile=89989    role=trainer

*** Test Cases ***
TC1
    Log To Console    ${BROWSER_NAME}

TC2
    Log To Console    ${BROWSER_NAME}
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]
    
TC3 
    Log To Console    ${my_detail}
    Log To Console    ${my_detail}[mobile]
    
    
TC4
    Log To Console    D:\mine\accounts
    Log To Console    D:\\mine\\accounts
    Log To Console    D:${/}mine${/}accounts
    Log To Console    ${EXECDIR}
    Log To Console    ${TEMPDIR}
    Log To Console    heloo${/}king
    Log To Console    heloo${/}king
    Log To Console    ${TEST_NAME}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${CURDIR}
    Log To Console    ${SUITE_NAME}