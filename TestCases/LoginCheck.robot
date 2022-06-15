*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/GlobalKeywords.robot
Library  DataDriver  ../TestData/testdata.csv

Suite Setup  Open my Browser    ${url}   ${browser}
Suite Teardown  Close my Browser
Test Template  Login with Invalid data

*** Variables ***
${browser}      headlesschrome
${url}      https://www.saucedemo.com/
${user}     standard_user
${pwd}      secret_sauce

*** Test Cases ***
Login with Invalid data ${username}     and     ${password}

Successfull Login
    Enter username     ${user}
    Enter password     ${pwd}
    Click Login
    Verify successfull login

*** Keywords ***
Login with Invalid data
    [Arguments]  ${username}    ${password}
    Enter username  ${username}
    Enter password  ${password}
    Click Login
    Error Message should visible
    Verify Invalid login