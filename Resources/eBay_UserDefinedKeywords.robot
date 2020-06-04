*** Settings ***
Library  SeleniumLibrary

*** Keywords ***


Verify Search Results
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press Keys  xpath://*[@id="gh-btn"]  [Return]
    Page Should Contain  results for mobile

Filter results by condition
    Click Element  //*[@id="s0-13-11-5-1[0]-75[1]-14-button-1-7"]
    Click Element  //*[@id="s0-13-11-5-1[0]-75[1]-14-content-menu"]/a[2]/span[1]/span


Verify filter results
    Sleep  3s
    Element Should Contain  //*[@id="s0-13-11-6-3-query_answer1-answer-2-1-0-list"]/li[1]/div/a/div  New
