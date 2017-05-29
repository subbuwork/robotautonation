*** Settings ***
Library  Selenium2Library

*** Variables ***
@{LIST_VARIABLES} =     Item1   Item2   Item3   Item4   Item5


*** Test Cases ***
List Vairaiables Test Case
    Log  @{LIST_VARIABLES}[0]
    Log  @{LIST_VARIABLES}[1]
    Log  @{LIST_VARIABLES}[2]
    Log  @{LIST_VARIABLES}[3]
    Log  @{LIST_VARIABLES}[4]
List Vairaiables Test Case
    [Tags]  demo
    @{list_variables} =     Set Variable    Item1   Item2   Item3   Item4
    Log  @{list_variables}[0]
    Log  @{list_variables}[1]
    Log  @{list_variables}[2]
    Log  @{list_variables}[3]


