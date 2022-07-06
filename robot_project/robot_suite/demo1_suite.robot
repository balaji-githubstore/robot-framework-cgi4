*** Test Cases ***
TC1
    Log To Console  message=Balaji Dinakaran
    Log To Console  message=Robot framework

TC2 Print 
    Log To Console    message=Hello
    Log  message=robot session
    
TC3
    ${my_name}  Set Variable    bala
    Log To Console    ${my_name}

TC4
    ${radius}=   Set Variable    10
    ${result}   Evaluate    3.14*${radius}*${radius}
    Log To Console    ${result}
    Log     ${result}


