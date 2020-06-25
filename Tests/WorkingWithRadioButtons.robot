# robot -d  results Tests/WorkingWithRadioButtons.robot
*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Radio Button operation keywords
    [Documentation]  TC to demonstrate Radio Button operation keywords

    Open Browser  https://www.sugarcrm.com/au/request-demo/  Chrome
    Maximize Browser Window
    Sleep  4s


#    Click Button  xpath://*[@class="optanon-allow-all accept-cookies-button"]
#    Sleep  4s


    Page Should Contain Radio Button  xpath://*[@id="doi0"]

    Page Should Not Contain Radio Button  xpath://*[@id="doi00"]

    Radio Button Should Not Be Selected  doi

    Scroll Element Into View  xpath://*[@id="field1"]/div/input
    Sleep  1s
    Select Radio Button  doi  0

    Sleep  4s

    Radio Button Should Be Set To  doi  0

    Close Browser