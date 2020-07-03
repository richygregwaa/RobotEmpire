# robot -d  results Tests/HandlingAlerts.robot

*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Test Case to demonstrate how to handle Alerts in Robot Framework
    [Documentation]  Test Case to demonstrate how to handle Alerts in Robot Framework


    Open Browser  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  chrome
    Select Frame  iframeResult
    Maximize Browser Window
    Click Button  xpath://body/button
    Sleep  2s
#    Handle Alert  ACCEPT  timeout=2s
#    Handle Alert  DISMISS  timeout=2s
#    Handle Alert  LEAVE  timeout=2s
    Handle Alert  ACCEPT  timeout=5s



    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
    Select Frame  iframeResult
    Maximize Browser Window
    Click Button  xpath://body/button
    Sleep  2s
    ${message1}=  Handle Alert  action=ACCEPT  timeout=2s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_confirm
    Select Frame  iframeResult
    Click Button  xpath://body/button
    Sleep  2s
    ${message2}=  Handle Alert  DISMISS  2s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt
    Select Frame  iframeResult
    Sleep  2s
    Click Button  xpath://body/button
    Input Text Into Alert  RCV Acadamy  action=DISMISS
    Sleep  2s

    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert2
    Select Frame  iframeResult
    Click Button  xpath://body/button
    Sleep  2
    Alert Should Be Present  text=Hello How are you?  action=ACCEPT

    Go To  https://www.sugarcrm.com/au/request-demo/
    Sleep  2
    Alert Should Not Be Present  action=ACCEPT, timeout=2s

    Close Browser

