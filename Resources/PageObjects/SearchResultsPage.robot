*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot

*** Variables ***
${search_result}  results for

*** Keywords ***
Verify Search Results
    [Arguments]  ${search_text}
    Page Should Contain  ${search_result} ${search_text}

Select product condition

Select delivery options