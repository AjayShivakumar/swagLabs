*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/GlobalKeywords.robot

Suite Setup  Open my Browser    ${url}   ${browser}
Suite Teardown  Close my Browser

*** Variables ***
${browser}      headlesschrome
${url}      https://www.saucedemo.com/
${user}     standard_user
${pwd}      secret_sauce
${Fisrtname}    123
${Lastname}     123
${Zipcode}      123411

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
    SortLowtoHigh
    HighPrice
    LowPrice

Filter with A to Z
    SortAtoZ

Filter with Z to A
    SortZtoA

Add and Remove Product
    View Product
    Add cart1
    Remove Product From Cart
    Back to Home Page

Place Order with more than one product
    Add cart1
    Add cart2
    Select Cart
    Checkout
    Continue without Input
    Enter First Name    ${Fisrtname}
    Enter Last Name     ${Lastname}
    Enter Zip Code      ${Zipcode}
    Continue
    Finish Button
    Back to Home

Check Links
    Click Side Menu
    Sleep   5
    Click About Option
    Go To   https://www.saucedemo.com/inventory.html
    Sleep   5
    Click Side Menu
    Sleep   5
    Click Logout

