# robot -d  results Tests/ImplicitWait.robot

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.sugarcrm.com/au/request-demo/
${browser}  chrome

*** Test Cases ***
Test Case to demonstrate Implicit Wait in Robot Framework
    [Documentation]  Test Case to demonstrate Implicit Wait in Robot Framework

    ${default_implicit_wait} =  Get Selenium Implicit Wait
    Set Selenium Implicit Wait  20s
    ${custom_implicit_wait} =  Get Selenium Implicit Wait

    Open Browser  ${url}  ${browser}
    Maximize Browser Window

    Set Browser Implicit Wait  8s

    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a
    Mouse Down  xpath://*[@id="field25"]/div/input
    Mouse Up  xpath://*[@id="field25"]/div/input
    Close Browser