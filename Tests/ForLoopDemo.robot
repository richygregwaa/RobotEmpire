# robot -d results Tests/ForLoopDemo.robot

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.google.com/
${browser}  chrome

*** Test Cases ***
Test Case to demonstrate FOR/Loop in Robot Framework
    [Documentation]  Test Case to demonstrate FOR/Loop in Robot Framework
    Set Selenium Implicit Wait  7s

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  name:q  RCV Academy
    Press Keys  xpath://*[@id="tsf"]//div[2]/ul/li  RETURN

    @{results_on_page}=  Get WebElements  xpath://*[@id="rso"]/div

    FOR  ${element}  IN  @{results_on_page}
        ${text} =  Get Text  ${element}
    END

    Close Browser