# robot -d  results Tests/SeleniumSpeedAndTimeout.robot

*** Settings ***
Library  SeleniumLibrary  timeout=10s

*** Variables ***
${url}  https://www.sugarcrm.com/au/request-demo/
${browser}  chrome

*** Test Cases ***
Test Case to demonstrate Selenium Speed and Timeout in Robot Framework
    [Documentation]  Test Case to demonstrate Selenium Speed and Timeout in Robot Framework
    ${default_selenium_timeout} =  Get Selenium Timeout
    ${default_selenium_speed} =  Get Selenium Speed
    Set Selenium Timeout  8s
    Set Selenium Speed  1s
    Open Browser  ${url}  ${browser}

    Maximize Browser Window
    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a
    Mouse Down  xpath://*[@id="field25"]/div/input
#    Sleep  2s
    Mouse Up  xpath://*[@id="field25"]/div/input
#    Sleep  2s

    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a
#    Sleep  4s
    Mouse Down On Link  xpath://*[@id="menu-item-107"]/a
#    Sleep  4s

    ${default_selenium_timeout} =  Get Selenium Timeout
    ${default_selenium_speed} =  Get Selenium Speed
    Close Browser