# To run from Terminal:
# (venv) richygregwaa@Richards-MBP RobotEmpire %
#                    robot -d Results Tests/eBay/Verify_search_functionality.robot
#     alternatively: robot -d Results -v env:qa Tests/eBay/Verify_search_functionality.robot
# robot -d Results -v url:https://www.ebay.com -v browser:chrome Tests/eBay/Verify_search_functionality.robot
# Placed copy of Chrome Driver in /usr/local/bin (Find shortcut in Users/richygregwaa/BrowserDrivers)

*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional
    HeaderPage.Input Search Text and Click Search  robot
    SearchResultsPage.Verify Search Results  robot

#Verify basic search functionality1
#    [Documentation]  This test case verifies the basic search
#    [Tags]  Functional
#    HeaderPage.Input Search Text and Click Search  books
#    SearchResultsPage.Verify Search Results  books
#
#Verify basic search functionality2
#    [Documentation]  This test case verifies the basic search
#    [Tags]  Functional
#    HeaderPage.Input Search Text and Click Search  travel
#    SearchResultsPage.Verify Search Results  travel


Verify advanced search functionality
    [Documentation]  This test case verifies the advanced search
    [Tags]  Functional

    HeaderPage.Click on Advanced Search Link





