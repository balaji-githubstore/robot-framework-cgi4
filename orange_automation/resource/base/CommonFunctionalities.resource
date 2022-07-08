*** Settings ***
Documentation   This file contains browser configuration details,
...     reusable keyword for automation

Library  SeleniumLibrary

*** Variables ***
${BROWSER_NAME}         chrome
${URL}      https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Launch Browser
    IF    '${BROWSER_NAME}' == 'edge'
        Open Browser    browser=${BROWSER_NAME}     executable_path=${EXECDIR}${/}driver${/}msedgedriver.exe
    ELSE IF    '${BROWSER_NAME}' == 'ff'
        Open Browser    browser=${BROWSER_NAME}     executable_path=${EXECDIR}${/}driver${/}geckodriver.exe
    ELSE
    Open Browser    browser=${BROWSER_NAME}     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    END

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    path=${EXECDIR}${/}screenshots
    Go To    url=${URL}

End Browser
#    Capture Page Screenshot
    Close Browser
