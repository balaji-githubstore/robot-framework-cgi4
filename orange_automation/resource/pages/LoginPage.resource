*** Settings ***
Documentation       This file use to work with the elements in login page

Resource    ../base/CommonFunctionalities.resource

*** Variables ***
${USERNAME_LOCATOR}     id=txtUsername
${PASSWORD_LOCATOR}     css=#txtPassword
${LOGIN_LOCATOR}    id=btnLogin
${ERROR_LOCATOR}    id=spanMessage
${FORGOTPASS_LOCATOR}       partial link=Forgot your password

*** Keywords ***
Enter Username
    [Arguments]     ${username}
    Input Text    ${USERNAME_LOCATOR}       ${username}

Enter Password
    [Arguments]     ${password}
    Input Password    ${PASSWORD_LOCATOR}     ${password}

Click Login
    Click Element    ${LOGIN_LOCATOR}

Validate the Invalid Error Message
    [Arguments]     ${expected_error}
    Element Text Should Be    ${ERROR_LOCATOR}    ${expected_error}

Click Forgot Password
    Click Element    ${FORGOTPASS_LOCATOR}
