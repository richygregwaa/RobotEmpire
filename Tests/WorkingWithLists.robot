# robot -d  results Tests/WorkingWithLists.robot
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.sugarcrm.com/au/request-demo/
${browser}  chrome

*** Test Cases ***
TC to demonstrate List Operation Keywords in Robot Framework
    [Documentation]  TC to demonstrate List Operation Keywords in Robot Framework

    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Sleep  2s
    Scroll Element Into View  xpath://*[@id="field1"]/div/input

    Page Should Contain List  xpath://*[@id="field27"]/div/select
    Page Should Not Contain List  xpath://*[@id="field27"]/div/selectt

    @{AllItems}=  Get List Items  xpath://*[@id="field27"]/div/select
    ${ListLabel}=  Get Selected List Label  xpath://*[@id="field27"]/div/select
    ${ListValue}=  Get Selected List Value  xpath://*[@id="field27"]/div/select

    List Selection Should Be  xpath://*[@id="field27"]/div/select  Company Size*

    Select From List By Index  xpath://*[@id="field27"]/div/select  1
    ${LLabel1}=  Get Selected List Label  xpath://*[@id="field27"]/div/select
    Sleep  2s

    Select From List By Label  xpath://*[@id="field27"]/div/select  51 – 100 employees
    ${LLable2}=  Get Selected List Label  xpath://*[@id="field27"]/div/select
    Sleep  2s

    Select From List By Value  xpath://*[@id="field27"]/div/select  level5
    ${LLable3}=  Get Selected List Label  xpath://*[@id="field27"]/div/select
    Sleep  2s

#   Multiselect lists
    Go to  https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
    Select frame  id:iframeResult
    Select All From List  xpath://*[@id="cars"]
    Sleep  2s
    @{ListLabels}=  Get Selected List Labels  xpath://*[@id="cars"]
    Sleep  2s
    Unselect From List By Value  xpath://*[@id="cars"]  audi
    Sleep  2s
    Unselect From List By Index  xpath://*[@id="cars"]  1
    Sleep  2s
    Unselect From List By Label  xpath://*[@id="cars"]  Volvo
    Sleep  2s
    @{ListValues}=  Get Selected List Values  xpath://*[@id="cars"]
    Sleep  2s
    Unselect All From List  xpath://*[@id="cars"]
    Sleep  2s
    List Should Have No Selections  xpath://*[@id="cars"]

    Close Browser