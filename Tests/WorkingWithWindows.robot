#robot -d results Tests/WorkingWithWindows.robot
*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Browser Window Operation Keywords in RobotFW
    [Documentation]    TC to demonstrate Browser Window Operation Keywords in RobotFW

    Open Browser  https://salesforce.com  Chrome  alias=ChromeRCV
    Wait Until Element Is Visible  xpath://*[@id="onetrust-accept-btn-handler"]
    Sleep  2s
    Click Button  xpath://*[@id="onetrust-accept-btn-handler"]

    Maximize Browser Window
    Sleep  4s

    Wait Until Element Is Visible  xpath://*[@id="globalnavbar-header-container"]/div[3]/div/div/div/a
    Click Link  xpath://*[@id="globalnavbar-header-container"]/div[3]/div/div/div/a

    @{WindowHandles}=  Get Window Handles
    Sleep  4s

    @{WindowsIdentifier}=  Get Window Identifiers
    Sleep  4s

    @{WindowNames}=  Get Window Names
    Sleep  4s

    @{WindowTitle}=  Get Window Titles
    Sleep  4s

    Set Window Position  100  200

    ${x}  ${y}=  Get Window Position
    Log  ${x}
    Log  ${y}
    Sleep  4s

    Set Window Size  800  600

    ${width}  ${height}=  Get Window Size
    Log  ${width}
    Log  ${height}
    Sleep  4s

    Switch Window  @{WindowHandles}[1]
    Log  @{WindowHandles}[1]
    Sleep  4s

    Close Window
    Sleep  4s

    Switch Window  @{WindowHandles}[0]
    Close Window