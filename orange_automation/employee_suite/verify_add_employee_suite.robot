*** Settings ***
Documentation   This suite handles test cases related to valid credential
...     connected with scenario SC_OH_2 and test case TC_OH_2

Resource    ../resource/base/CommonFunctionalities.resource
Resource    ../resource/pages/LoginPage.resource
Resource    ../resource/pages/MainPage.resource

Test Setup      Launch Browser
Test Teardown       End Browser


*** Test Cases ***
Verify Add Employee Test
    Enter Username    Admin
    Enter Password    admin123
    Click Login
    Mouse Hover On PIM
    Click Element    link=Add Employee
    Input Text    id=firstName    Bala
    Input Text    id=lastName    Dina
    Choose File    xpath=//*[@type='file']    ${EXECDIR}${/}test_data${/}profile.PNG
    Click Element    id=btnSave
    Element Attribute Value Should Be    id=personal_txtEmpFirstName    value    Bala
#    Row Count Is Equal To X    select * from Products where emp_name=Bala   1
