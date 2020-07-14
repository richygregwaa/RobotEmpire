# robot -d  results Tests/HandlingMouseOperations.robot

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.sugarcrm.com/au/request-demo/
${browser}  chrome

*** Test Cases ***
Test Case to demonstrate Mouse Operations in Robot Framework
    [Documentation]  Test Case to demonstrate Mouse Operations in Robot Framework
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Scroll Element Into View  id:interest_market_c0
    Mouse Down  xpath://*[@id="field25"]/div/input
    Sleep  2s
    Mouse Up  xpath://*[@id="field25"]/div/input
    Sleep  2s

    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a
    Sleep  4s
    Mouse Down On Link  xpath://*[@id="menu-item-107"]/a
    Sleep  4s
    Mouse Over  xpath://*[@id="menu-item-19419"]/a
    Sleep  4s
    Mouse Out  xpath://*[@id="menu-item-19419"]/a
    Sleep  4s
    Mouse Down On Image  xpath://footer//div[1]/a/img
    Sleep  4s
#   Drag and Drop Example
    Go To  https://demoqa.com/droppable/
    Drag And Drop  xpath://*[@id="draggable"]  xpath://*[@id="droppable"]
    Sleep  4s
#   Right Click On Element
    Open Context Menu  xpath://*[@id="app"]/div/div/div[2]/div[2]/div[2]/div
    Sleep  2s

    Close Browser