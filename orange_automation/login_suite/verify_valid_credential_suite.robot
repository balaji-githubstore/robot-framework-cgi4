*** Settings ***
Documentation   This suite handles test cases related to valid credential
...     connected with scenario SC_OH_2 and test case TC_OH_2

Resource    ../resource/base/CommonFunctionalities.resource
Resource    ../resource/pages/LoginPage.resource
Resource    ../resource/pages/MainPage.resource

Library     DataDriver      file=../test_data/orange_test_data.xlsx     sheet_name=VerifyValidCredential

Test Setup      Launch Browser
Test Teardown       End Browser

Test Template       Verify Valid Credential Template

*** Test Cases ***
Verify_Valid_Credential_${username}_${expected_value}

*** Keywords ***
Verify Valid Credential Template
    [Arguments]     ${username}     ${password}     ${expected_value}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login
    MainPage Should Contain     ${expected_value}






