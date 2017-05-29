*** Settings ***
Resource  Resources/PO/LandingPage.robot
Resource  Resources/PO/TopNav.robot
Resource  Resources/PO/SearchProducts.robot
Resource  Resources/PO/Product.robot
Resource  Resources/PO/Cart.robot
Resource  Resources/PO/SignPage.robot

*** Variables ***
${SCREENSHOT_NAME}  AmazonHomePgae.jpg
*** Keywords ***
 Search Products
    LandingPage.Load
    Set Screenshot Directory  Results/amazon/screenshots
    Capture Page Screenshot  ${SCREENSHOT_NAME}
    sleep  3s
    LandingPage.Verify Loaded Page
    #Sleep   3s
    TopNav.Search For Product
    #sleep  3s
    SearchProducts.Verify Search Completed
    #Execute JavaScript  window.scrollTo(0,1000)
Select Product From Search Results
    SearchProducts.Select Product From Search List
    Product.Verify Products Page Loaded

Add Product To Cart
    Sleep  3s
    Product.Select Product
    Sleep  5s
    Product.Check Product Details
Add To Cart
    Product.Add To Cart
Verify Cart
    Sleep  3s
    Cart.Verify Cart

Proceed To Check Out
    Sleep  4s
    Cart.Proceed To Check Out
Verify Login Page
    SignPage.Verify Login Page
    Sleep  4s


