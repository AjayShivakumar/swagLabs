*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/GlobalKeywords.robot

Test Setup  Open my Browser    ${url}   ${browser}
Test Teardown  Close my Browser


*** Variables ***
${browser}      headlesschrome
${url}      https://www.saucedemo.com/
${user}     standard_user
${pwd}      secret_sauce

*** Test Cases ***
Filter High to Low Function
    Enter username     ${user}
    Enter password     ${pwd}
    Click Login
    Verify successfull login
    SortHightoLow
    HighPrice
    LowPrice

Filter Low to High Function
    Enter username     ${user}
    Enter password     ${pwd}
    Click Login
    Verify successfull login
    SortLowtoHigh
    HighPrice
    LowPrice