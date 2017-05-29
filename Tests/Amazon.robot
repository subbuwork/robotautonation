*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library
Resource  Resources/AmazonApp.robot    # necessary for lower level keywords in test cases
Resource  Resources/Commons.robot   # necessary for Setup & Teardown
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  ff
${URL} =  https://www.amazon.com
${SEARCH_KEY} =  iphone 7s plus
*** Test Cases ***
Logged out user can search for products
    [Tags]  search
    Sleep  3s
    AmazonApp.Search Products

Logged out user can view a product
    [Tags]  product
    AmazonApp.Search Products
    AmazonApp.Select Product From Search Results

Logged out user can add product to cart
    [Tags]  cart
    AmazonApp.Search Products
    AmazonApp.Select Product From Search Results
    AmazonApp.Add To Cart
    AmazonApp.Verify Cart

User Should Login To Check Out
    [Tags]  Checkout
    AmazonApp.Search Products
    AmazonApp.Select Product From Search Results
    AmazonApp.Add To Cart
    AmazonApp.Verify Cart
    AmazonApp.Proceed To Check Out
    AmazonApp.Verify Login Page






