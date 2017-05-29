*** Settings ***
Library   Selenium2Library

*** Keywords ***
Load
    Go To  ${URL}
    CAPTURE PAGE SCREENSHOT  AmazonHomePage.jpg
Verify Loaded Page
    Wait Until Page Contains  Your Amazon.com