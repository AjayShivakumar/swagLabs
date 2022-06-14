*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/GlobalKeywords.robot
Suite Setup     Remove Prevous Outputs

*** Variables ***
${browser}      chrome
${url}      https://www.saucedemo.com/
${user}     standard_user
${pwd}      secret_sauce

*** Test Cases ***
Successfull Login
    Open my Browser    ${url}   ${browser}
    Enter username     ${user}
    Enter password     ${pwd}
    Click Login
    Verify successfull login
    Close my Browser
    Remove Files    ../Results/