*** Settings ***
Documentation  demo test case
Library  Selenium2Library


*** Variables ***
${BROWSER}  gc

*** Test Cases ***
User shoul login to checkout
  [Documentation]  Basic test case
  [Tags]  Smoke
  open browser  http://www.amazon.com  ${BROWSER}
  maximize browser window
  Sleep  3s
  input text  id=twotabsearchtextbox  Ferrari480
  Click Button  css=input.nav-input:nth-child(2)
  Sleep  3s
  WAIT UNTIL PAGE CONTAINS  Your search "Ferrari480" did not match any products.
  Sleep  5s
  Close Browser

*** keywords ***


