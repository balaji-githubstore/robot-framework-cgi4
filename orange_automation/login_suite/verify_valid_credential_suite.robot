*** Settings ***
Documentation   This suite handles test cases related to valid credential
...     connected with scenario SC_OH_2 and test case TC_OH_2

Resource    ../resource/base/CommonFunctionalities.resource

Test Setup      Launch Browser
Test Teardown       End Browser

*** Test Cases ***
Verify Valid Credential Test
    Input Text    id=txtUsername    Admin
    Input Password    css=#txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info




