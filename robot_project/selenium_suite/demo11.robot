*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
   Open Browser    browser=chrome    executable_path=D:\\Software\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Set Selenium Speed    1s
    Go To    url=https://www.google.com
    Press Keys    name=q      hello
    Sleep    1s
    Press Keys  None        ARROW_DOWN
     Press Keys  None        ARROW_DOWN
       Sleep    1s
      Press Keys  None        ENTER