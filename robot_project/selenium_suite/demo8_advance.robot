*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
   Open Browser    browser=chrome    executable_path=D:\\Software\\chromedriver.exe
   Maximize Browser Window
   Set Selenium Implicit Wait    10s
   Go To    url=https://opensource-demo.orangehrmlive.com/
   Input Text    css=#txtUsername    Admin
   Input Text    css=#txtPassword    admin123
   Click Element    css=input[type='submit']

TC2
   Open Browser    browser=chrome    executable_path=D:\\Software\\chromedriver.exe
   Maximize Browser Window
   Set Selenium Implicit Wait    10s
   Go To    url=https://nasscom.in/
   Mouse Over    xpath=//a[text()='Membership']
   Click Element    xpath=//a[text()='Members Listing']

TC3
   Open Browser    browser=chrome    executable_path=D:\\Software\\chromedriver.exe
   Maximize Browser Window
   Set Selenium Implicit Wait    10s
   Go To    url=https://nasscom.in/

   ${ele}   Get Webelement    xpath=//a[text()='Members Listing']
   Execute Javascript   arguments[0].click();    ARGUMENTS   ${ele}