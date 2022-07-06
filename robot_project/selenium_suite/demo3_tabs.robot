*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
   Open Browser    browser=chrome    executable_path=D:\\Software\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://www.db4free.net/
    Click Element    partial link=phpMy
    #switch window using title
    Switch Window   phpMyAdmin
    Input Text    id=input_username    admin
    Input Password    id=input_password    pass22
    Click Element    id=input_go
    #assert the error
    [Teardown]  Close Browser

 TC2
   Open Browser    browser=chrome    executable_path=D:\\Software\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://www.db4free.net/
    Click Element    partial link=phpMy
    #switch to new window using NEW
    Switch Window   NEW
    Input Text    id=input_username    admin
    Input Password    id=input_password    pass22
    Click Element    id=input_go
    Close Window
    #assert the error
    #switch to main/base tab
    Switch Window   MAIN
    ${title}    Get Title
    Log To Console    ${title}
#    [Teardown]  Close Browser
