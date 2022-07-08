*** Settings ***
Documentation   This suite handles test cases related to valid credential
...     connected with scenario SC_OH_2 and test case TC_OH_2

Resource    ../resource/base/CommonFunctionalities.resource

Library     DataDriver      file=../test_data/orange_test_data.xlsx     sheet_name=VerifyValidCredential

Test Setup      Launch Browser
Test Teardown       End Browser

Test Template       Verify Valid Credential Template

*** Test Cases ***
Verify_Valid_Credential_${username}_${expected_value}

*** Keywords ***
Verify Valid Credential Template
    [Arguments]     ${username}     ${password}     ${expected_value}
    Input Text    id=txtUsername    ${username}
    Input Password    css=#txtPassword     ${password}
    Click Element    id=btnLogin
    Page Should Contain    ${expected_value}






