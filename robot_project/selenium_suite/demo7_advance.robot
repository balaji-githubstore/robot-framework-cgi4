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
#   Input Text    id=bill-date-long    06/02/2006
   Click Element    id=bill-date-long
   Select From List By Label    xpath=//select[@data-handler="selectMonth"]     Feb
   Select From List By Label    xpath=//select[@data-handler="selectYear"]     2006
   Click Element    xpath=//a[text()='9']
