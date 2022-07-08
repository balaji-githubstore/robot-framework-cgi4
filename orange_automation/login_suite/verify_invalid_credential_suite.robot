*** Settings ***
Documentation   This suite handles test cases related to valid credential
...     connected with scenario SC_OH_2 and test case TC_OH_3

Resource    ../resource/base/CommonFunctionalities.resource
Resource    ../resource/pages/LoginPage.resource

Test Setup      Launch Browser
Test Teardown       End Browser

Test Template   Verify Invalid Credential Template

*** Test Cases ***
TC1     john    john123   Invalid credentials
#TC2     peter   peter123      Invalid credentials

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${expected_error}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login
    Validate the Invalid Error Message    ${expected_error}