*** Settings ***

Library  Selenium2Library

*** Test Cases ***
Test1
    OPEN BROWSER    https://www.amazon.com  ff
    maximize browser window
    SLEEP  3s
    input text  id=twotabsearchtextbox  Cell Phones
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Sleep  3s
    Execute JavaScript  window.scrollTo(0,1000)
    Click Image  Unlocked Cell Phones