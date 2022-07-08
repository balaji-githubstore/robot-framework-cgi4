*** Settings ***
Library  RequestsLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Comment   Get request using path parameter
    Create Session    alias=petshop    url=https://petstore.swagger.io/v2/
    ${response}      Get Request    alias=petshop    uri=pet/1006
    Log To Console    ${response}
    Status Should Be    200     ${response}
    Log To Console     ${response.json()}
    Log    ${response.json()}

TC2
    Comment   Get request using query parameter
    Create Session    alias=petshop    url=https://petstore.swagger.io/v2/
    ${response}      Get Request    alias=petshop    uri=pet/findByStatus?status=sold
    Log To Console    ${response}
    Status Should Be    200     ${response}
    Log To Console     ${response.json()}
    Log     ${response.json()}


TC3
  Comment    Post req to add a pet
  ${json}   Get Binary File       ${EXECDIR}${/}Files${/}data.json
  Create Session    alias=petshop    url=https://petstore.swagger.io/v2/
   &{header_dic}    Create Dictionary     Content-Type=application/json
   ${response}   Post Request    alias=petshop    uri=pet     headers=${header_dic}       data=${json}
    Log To Console     ${response.json()}
    Log     ${response.json()}
    Status Should Be    200     ${response}

TC4
  Comment    Post req to add a pet
  ${json}   Get Binary File       ${EXECDIR}${/}Files${/}data.json
  Create Session    alias=petshop    url=https://petstore.swagger.io/v2/
   &{header_dic}    Create Dictionary     Content-Type=application/json
   ${response}   Post Request    alias=petshop    uri=pet     headers=${header_dic}       data=${json}
    Log To Console     ${response.json()}
    Log     ${response.json()}
    Status Should Be    200     ${response}

