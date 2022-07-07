*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
   Open Browser    browser=chrome    executable_path=D:\\Software\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://www.ilovepdf.com/pdf_to_word
    Choose File    locator=xpath=//input[@type='file']    file_path=D:${/}Balaji-Profile_2022.pdf

 TC2
    Open Browser    browser=chrome    executable_path=D:\\Software\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://smallpdf.com/pdf-to-word
    Choose File    locator=xpath=//input[@type='file']    file_path=${EXECDIR}${/}Files${/}Balaji-Profile_2022.pdf
