*** Settings ***
Documentation   This file contains all the keywords on add employee section

Resource      ../base/CommonFunctionalities.resource

*** Variables ***
${FIRSTNAME_LOCATOR}   id=firstName
${LASTNAME_LOCATOR}   id=lastName

*** Keywords ***
Enter FirstName
    [Arguments]     ${firstname}
    Input Text    ${FIRSTNAME_LOCATOR}       ${firstname}

Enter LastName
    [Arguments]     ${lastname}
    Input Text    ${FIRSTNAME_LOCATOR}       ${lastname}