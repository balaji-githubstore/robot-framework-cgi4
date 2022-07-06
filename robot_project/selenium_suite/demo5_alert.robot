*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
   Open Browser    browser=chrome    executable_path=D:\\Software\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://nasscom.in/nasscom-membership
    Click Element    link=Calculate Membership Fee
    ${alert_text}   Handle Alert    action=ACCEPT   timeout=30
    Log To Console    ${alert_text}
