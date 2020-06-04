*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
This is sample test case
    [Documentation]  Google test
    [Tags]  regression

    Open Browser  https:/google.com  chrome
    Close Browser
*** Keywords ***
#You can get a list of keywords and other stuff from https://robotframework.org/ or even better
# https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html and scroll down to Shortcuts

