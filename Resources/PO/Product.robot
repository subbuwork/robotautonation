*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Products Page Loaded
  Wait Until Page Contains       Back to search results for "${SEARCH_KEY}"
Select Product
    Execute JavaScript  window.scrollTo(0,800)
    Click Element  xpath=.//*[@id='result_0']/div/div[2]/div/div/a/img
    Wait Until Page Contains  Moto G Plus (5th Generation) - Lunar Gray - 32 GB - Unlocked - Prime Exclusive - with Lockscreen Offers & Ads
Check Product Details
    Execute JavaScript  window.scrollTo(0,200)
    Mouse Over  xpath=.//div[@id='altImages']/ul/child::li[2]/span
    Sleep  2s
    Mouse Over  xpath=.//div[@id='altImages']/ul/child::li[3]/span
    Sleep  2s
    Mouse Over  xpath=.//div[@id='altImages']/ul/child::li[4]/span
    Sleep  2s
    Mouse Over  xpath=.//div[@id='altImages']/ul/child::li[5]/span
    Sleep  2s
    Mouse Over  xpath=.//div[@id='altImages']/ul/child::li[6]/span
    Sleep  2s
    Mouse Over  xpath=.//div[@id='altImages']/ul/child::li[7]/span
    Sleep  5s
    Click Button    id=a-autoid-9-announce
    #Execute JavaScript  window.scrollTo(0,1200)
    Sleep  3s
    Click Button    id=add-to-cart-button
    #Execute JavaScript  window.scrollTo(1200,0)
    Sleep  10s
    #Click Button  id=add-to-wishlist-button-submit

Add To Cart
    Sleep  3s
    Click Button  add-to-cart-button
    Sleep  3s
    Click Button  xpath=.//*[@id='siNoCoverage-announce']

