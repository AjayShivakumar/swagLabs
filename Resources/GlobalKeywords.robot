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
    Capture Page Screenshot     ../Screenshots/loginsuccess.png

Close my Browser
    close all browsers

Error Message should visible
    page should contain     Epic sadface

Verify Invalid login
    Capture Page Screenshot     ../Screenshots/Failedlogin.png

SortHightoLow
    Click Element   xpath://option[contains(text(),'Price (high to low)')]
    Capture Page Screenshot     ../Screenshots/highPrice.png

SortLowtoHigh
    Click Element   xpath://option[contains(text(),'Price (low to high)')]
    Capture Page Screenshot     ../Screenshots/lowPrice.png

HighPrice
    ${high_price}   Get Text    ${txt_highprice}
    log to console     ${high_price}

LowPrice
    ${low_price}    Get Text    ${txt_lowprice}
    log to console     ${low_price}

SortAtoZ
    Click Element   xpath://option[contains(text(),'Name (A to Z)')]
    Capture Page Screenshot     ../Screenshots/AtoZ.png

SortZtoA
    Click Element   xpath://option[contains(text(),'Name (Z to A)')]
    Capture Page Screenshot     ../Screenshots/ZtoA.png

Add cart1
    click Element   xpath://button[@id='add-to-cart-sauce-labs-backpack']
    Element Should Be Visible   remove-sauce-labs-backpack

Add cart2
    click Element   xpath://button[@id='add-to-cart-test.allthethings()-t-shirt-(red)']
    Element Should Be Visible   remove-test.allthethings()-t-shirt-(red)

View Product
    Click Element   xpath://*[@id="item_4_img_link"]/img

Remove Product From Cart
    click Element   xpath://button[@id='remove-sauce-labs-backpack']

Back to Home Page
    Click Element   //button[@id='back-to-products']

Select Cart
    Click Element   xpath://span[contains(text(),'2')]

Checkout
    Click Element   //button[@id='checkout']

Continue
    Click Element   //input[@id='continue']

Enter First Name
    [Arguments]     ${FirstName}
    Input Text      ${txt_FirstName}     ${FirstName}

Enter Last Name
    [Arguments]     ${LastName}
    Input Text      ${txt_LastName}     ${LastName}

Enter Zip Code
    [Arguments]     ${ZipCode}
    Input Text      ${txt_ZipCode}     ${ZipCode}

Continue without Input
    Click Element   //input[@id='continue']
    page should contain     Error: First Name is required

Finish Button
    Click Element   //button[@id='finish']
    Capture Page Screenshot     ../Screenshots/OrderConfimation.png

Back to Home
    click Element   //button[@id='back-to-products']
    Capture Page Screenshot     ../Screenshots/BackToHomePage.png

Click Side Menu
    Click Element   //button[@id='react-burger-menu-btn']

Click About Option
    click Element   //a[@id='about_sidebar_link']
    Title Should Be     Cross Browser Testing, Selenium Testing, Mobile Testing | Sauce Labs

Click Logout
    Click Element   //a[@id='logout_sidebar_link']
    Capture Page Screenshot     ../Screenshots/LoginPage.png