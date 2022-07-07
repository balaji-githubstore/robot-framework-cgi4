*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
   Open Browser    browser=chrome    executable_path=D:\\Software\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://www.citibank.co.in/ssjsps/forgetuseridmidssi.jsp
   Click Element    link=select your product type
   Click Element    link=Credit Card
   Scroll Element Into View    css=[value='PROCEED']
   Execute Javascript    document.querySelector("#bill-date-long").value='06/02/2006'


TC2
   Open Browser    browser=chrome    executable_path=D:\\Software\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://www.citibank.co.in/ssjsps/forgetuseridmidssi.jsp
   Click Element    link=select your product type
   Click Element    link=Credit Card

   ${ele}   Get Webelement   xpath=//input[@id='bill-date-long']

   Execute Javascript    arguments[0].value='06/02/2006'    ARGUMENTS       ${ele}

