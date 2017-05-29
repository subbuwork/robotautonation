*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Search Completed
  Wait Until Page Contains  "${SEARCH_KEY}"

Select Product From Search List
    Sleep  3s
    Click Element  xpath=.//*[@id='result_0']/div/div/div/div[1]/div/div/a