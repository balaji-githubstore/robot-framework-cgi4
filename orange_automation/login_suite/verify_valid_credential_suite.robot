*** Settings ***
Documentation   This suite handles test cases related to valid credential
...     connected with scenario SC_OH_2 and test case TC_OH_2

Resource    ../resource/base/CommonFunctionalities.resource

Test Setup      Launch Browser
Test Teardown       End Browser

Test Template       Verify Valid Credential Template

*** Test Cases ***
TC1  Admin  admin123    My Info
TC2  Admin   admin123     Buzz

*** Keywords ***
Verify Valid Credential Template
    [Arguments]     ${username}     ${password}     ${expected_value}
    Input Text    id=txtUsername    ${username}
    Input Password    css=#txtPassword     ${password}
    Click Element    id=btnLogin
    Page Should Contain    ${expected_value}






