*** Settings ***
Documentation   This file contains all the keywords for working the orange HRM menu

Resource      ../base/CommonFunctionalities.resource

*** Variables ***
${MYINFO_LOCATOR}   link=My Info
${DASHBOARD_LOCATOR}   link=Dashboard
${PIM_LOCATOR}  link=PIM
${ADDEMPLOYEE_LOCATOR}      link=Add Employee

*** Keywords ***
MainPage Should Contain
    [Arguments]     ${expected_value}
    Page Should Contain    ${expected_value}

Click My Info
    Click Element    ${MYINFO_LOCATOR}

Click Dashboard
    Click Element   ${DASHBOARD_LOCATOR}

Mouse Hover On PIM
    Mouse Over    ${PIM_LOCATOR}

Click Add Employee
    Click Element    ${ADDEMPLOYEE_LOCATOR}