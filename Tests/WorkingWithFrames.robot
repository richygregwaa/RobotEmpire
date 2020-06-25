# robot -d  results Tests/WorkingWithFrames.robot
*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate working with Frames in RobotFramework
    [Documentation]  TC to demonstrate working with Frames in RobotFramework

    Open Browser  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  Chrome
    Maximize Browser Window

    Select Frame  id:iframeResult

    Current Frame Should Contain  JavaScript Alert
    Current Frame Should Not Contain  JavaScript Confirm Box Two

    Unselect Frame
    #Select Frame  id:textareacontainer

    Frame Should Contain  id:iframeResult  JavaScript Alert

    Close Browser