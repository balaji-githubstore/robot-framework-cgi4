*** Settings ***
Library     DatabaseLibrary
Library  SeleniumLibrary

Suite Setup     Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db
...     dbPassword=12345678     dbHost=db4free.net  dbPort=3306
Suite Teardown      Disconnect From Database

*** Test Cases ***
TC1
   Open Browser    browser=chrome
    ...     executable_path=D:\\Software\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html
    ${text}  Get Text    xpath=//table[@id='example']/tbody/tr[1]/td[5]
    Log To Console     ${text}
    ${rec}   Convert To Integer    ${text}
    Row Count Is Equal To X    select * from Products where product_id=${rec}    1
    Close Browser