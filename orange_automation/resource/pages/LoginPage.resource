*** Settings ***
Documentation       This file use to work with the elements in login page

Library    AppiumLibrary

*** Keywords ***
Enter Username
    [Arguments]     ${username}
    Input Text
