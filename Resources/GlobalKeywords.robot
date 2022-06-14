*** Settings ***
Library     SeleniumLibrary
Variables   ../ProjectElements/LocatorElements.py

*** Keywords ***
Open my Browser
    [Arguments]     ${url}  ${browser}
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

Enter username
    [Arguments]     ${username}
    Input Text      ${txt_userName}     ${username}

Enter password
    [Arguments]     ${password}
    Input Text      ${txt_password}     ${password}

Click Login
    click button    ${txt_login_button}

Verify successfull login
    Capture Page Screenshot     ../Results/loginsuccess.png

Close my Browser
    close all browsers

Remove Prevous Outputs
    Remove Files    ../Results/log.html
