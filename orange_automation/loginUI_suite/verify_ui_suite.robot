*** Settings ***
Documentation   This suite handles test cases related to valid credential
...     connected with scenario SC_OH_2 and test case TC_OH_2

Resource    ../resource/base/CommonFunctionalities.resource

Test Setup      Launch Browser
Test Teardown       End Browser

*** Test Cases ***
Verify Login Page Title
    Title Should Be    OrangeHRM

Verify UI Element Test
    Element Should Be Visible    id=txtUsername
    Element Attribute Value Should Be    id=txtUsername    type    text
    Element Attribute Value Should Be    id=txtPassword    type    password
    Element Text Should Be    partial link=Forgot    Forgot your password?
    Element Should Contain    partial link=Forgot    Forgot your password


Verify Image Logo Test
    Element Attribute Value Should Be    xpath=//img[contains(@src,'logo')]    src    /webres_62c611484a1667.42660422/themes/default/images/login/logo.png

