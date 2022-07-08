*** Settings ***
Library     DatabaseLibrary

Suite Setup     Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db
...     dbPassword=12345678     dbHost=db4free.net  dbPort=3306
Suite Teardown      Disconnect From Database

*** Test Cases ***
TC1
    ${count}    Row Count    select * from Products
    Log To Console    ${count}
TC2
    Row Count Is Equal To X    select * from Products where product_id=10    1
    Row Count Is Greater Than X    select * from Products    100
    Row Count Is Less Than X    select * from Products    200

TC3 
    ${output}   Query    select * from Products where product_id<=10
    Log To Console    ${output}
    Log To Console    ${output}[0]
    Log To Console    ${output}[1]
    Log To Console    ${output}[0][1]
    
 TC4
    Execute Sql String    update Products set productname='demo' where product_id=10
     ${output}   Query    select * from Products where product_id=10
    Log To Console    ${output}
    Row Count Is Equal To X    select * from Products where productname='demo'   1


 TC5
#    Execute Sql String    Delete from Products where product_id=1
#    Execute Sql String  insert into Products values (656,'jj','78787887')
    ${output}   Query    select * from Products where product_id=656
    Log To Console    ${output}