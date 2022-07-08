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
    [Documentation]     This helps to send username
    ...     Examples
    ...     | Enter Username | admin|
    ...     | Enter Username | bala |
    Input Text    ${USERNAME_LOCATOR}       ${username}

Enter Password
    [Arguments]     ${password}
    [Documentation]     This helps to send password
    ...     Examples: \n
    ...     | Enter Password | admin|
    ...     | Enter Password | bala |
    Input Password    ${PASSWORD_LOCATOR}     ${password}

Click Login
    [Documentation]     This helps to click on login
    ...     Examples: \n
    ...     | Click Login |
    Click Element    ${LOGIN_LOCATOR}

Validate the Invalid Error Message
    [Arguments]     ${expected_error}
    [Documentation]     This helps to validate error message
    ...     Examples: \n
    ...     | Validate the Invalid Error Message | Invalid Username |
    ...     | Validate the Invalid Error Message | Invalid Credentials |
    Element Text Should Be    ${ERROR_LOCATOR}    ${expected_error}

Click Forgot Password
    Click Element    ${FORGOTPASS_LOCATOR}
