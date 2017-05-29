*** Settings ***
Documentation  Top navigation
Library  Selenium2Library

*** Variables ***
${TOP_NAV_SEARCH_BAR} =     id=twotabsearchtextbox
${TOP_NAV_SEARCH_BUTTON} =  xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***
Search For Product
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  ${TOP_NAV_SEARCH_BAR}  ${SEARCH_KEY}
Submit Search
  Click Button  ${TOP_NAV_SEARCH_BUTTON}
