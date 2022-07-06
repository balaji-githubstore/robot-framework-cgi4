*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Valid Credential
        Open Browser    url=https://demo.openemr.io/b/openemr   browser=chrome    executable_path=D:\\Software\\chromedriver.exe
        Input Text    id=authUser    admin
        Input Password    locator=id=clearPass   password=pass
        Click Element    locator=id=login-button
        Title Should Be    title=OpenEMR

