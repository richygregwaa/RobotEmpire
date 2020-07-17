*** Settings ***
Library  SeleniumLibrary
Resource  ../TestData/ConfigData.robot



*** Keywords ***
Start TestCase
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Sleep  2s


Finish TestCase
    Close Browser