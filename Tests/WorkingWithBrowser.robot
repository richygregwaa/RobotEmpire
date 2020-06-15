# robot -d  results Tests/WorkingWithBrowser.robot
*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
TC to demonstrate Browser Operation Keywords in Robot Framework
    [Documentation]  TC to demonstrate Browser Operation Keywords in Robot Framework

    Open Browser  http://google.com  Chrome  alias=ChromeRCV

    Maximize Browser Window

    Open Browser  about:blank  ff  alias=RCVFF

    &{alias}  Get Browser Aliases

    Log  @{alias}[1]

    @{browser_ID}  Get Browser Ids

    Log  @{browser_ID}[1]

    Switch Browser  1            # Go to the 1st browser Chrome, Google screen

    Input Text  //*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input  RCVAcademy

    Sleep  4s

    Switch Browser  @{alias}[1]  # Go to 2nd browser. Note: alias index starts from [0]

    Go To  http://salesforce.com

    Close All Browsers

