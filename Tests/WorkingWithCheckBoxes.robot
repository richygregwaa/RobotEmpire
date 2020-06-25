# robot -d  results Tests/WorkingWithCheckBoxes.robot
*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate working with Checkboxes in RobotFramework
    [Documentation]  TC to demonstrate working with Checkboxes in RobotFramework

    Open Browser  https://www.sugarcrm.com/au/request-demo/  Chrome
    Maximize Browser Window
    Sleep  4s

    Scroll Element Into View  xpath://*[@id="field1"]/div/input
    Page Should Contain Checkbox  id:interest_market_c0

    Page Should Not Contain Checkbox  id:interest_market_c00

    Select Checkbox  id:interest_market_c0
    Checkbox Should Be Selected  id:interest_market_c0
    Capture Page Screenshot
    Sleep  4s
    Checkbox Should Not Be Selected  id:interest_sell_c0

    Unselect Checkbox  id:interest_market_c0
    Checkbox Should Not Be Selected  id:interest_market_c0
    Capture Page Screenshot
    Sleep  4s
    Close Browser

    Close Browser