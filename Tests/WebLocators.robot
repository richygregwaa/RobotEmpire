
# robot -d Results Tests/WebLocators.robot

*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Weblocators in Robot FW
    [Documentation]  This is a sample test case to demonstrate Weblocators in Robot FW

    Open Browser  http://www.ebay.com  chrome
    Maximize Browser Window
#    Input Text  id:gh-ac  robot2
    Input Text  name:_nkw  robot2


    Sleep  4s
    Close Browser
