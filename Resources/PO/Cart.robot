*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Cart
    Wait Until Page Contains  Added to Cart
Proceed To Check Out
    Click Element  xpath=.//*[@id='hlb-ptc-btn-native']