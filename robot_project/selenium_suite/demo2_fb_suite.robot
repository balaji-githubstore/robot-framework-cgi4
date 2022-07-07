*** Settings ***
Library   SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    ...     executable_path=D:\\Software\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.facebook.com/
    Click Element    locator=link=Create New Account
    Input Text    locator=name=firstname    text=Balaji
    Input Text    locator=name=lastname    text=Dinakaran
    Input Text    locator=name=reg_email__    text=demo@gmail.com
    Input Text    locator=id=password_step_input    text=welcome123
    Select From List By Label    id=day    20
    Select From List By Label    id=month       Dec
    Select From List By Value    id=year    2000
    Click Element    locator=xpath=//input[@value='-1']
    Click Element    name=websubmit
