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

Error Message should visible
    page should contain     Epic sadface

Verify Invalid login
    Capture Page Screenshot     ../Results/Failedlogin.png

SortHightoLow
    Click Element   xpath://option[contains(text(),'Price (high to low)')]
    Capture Page Screenshot     ../Results/highPrice.png

SortLowtoHigh
    Click Element   xpath://option[contains(text(),'Price (low to high)')]
    Capture Page Screenshot     ../Results/lowPrice.png

HighPrice
    ${high_price}   Get Text    ${txt_highprice}
    log to console     ${high_price}

LowPrice
    ${low_price}    Get Text    ${txt_lowprice}
    log to console     ${low_price}