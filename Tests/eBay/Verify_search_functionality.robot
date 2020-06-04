# To run from Terminal:
# (venv) richygregwaa@Richards-MBP RobotEmpire %
#                    robot -d Results Tests/eBay/Verify_search_functionality.robot
#     alternatively: robot -d Results -v env:qa Tests/eBay/Verify_search_functionality.robot
# Placed copy of Browser Driver in /Users/richygregwaa/PycharmProjects/RobotEmpire/venv/bin

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


    HeaderPage.Input Search Text and Click Search
    SearchResultsPage.Verify Search Results

#Verify advanced search functionality
#    [Documentation]  This test case verifies the advanced search
#    [Tags]  Functional
#
#    HeaderPage.Click on Advanced Search Link





