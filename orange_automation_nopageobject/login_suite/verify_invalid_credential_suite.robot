*** Settings ***
Documentation   This suite handles test cases related to valid credential
...     connected with scenario SC_OH_2 and test case TC_OH_3

Resource    ../resource/base/CommonFunctionalities.resource

Test Setup      Launch Browser
Test Teardown       End Browser

Test Template   Verify Invalid Credential Template

*** Test Cases ***
TC1     john    john123   Invalid credentials
TC2     peter   peter123      Invalid credentials

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text    id=txtUsername    ${username}
    Input Password    css=#txtPassword     ${password}
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage    ${expected_error}