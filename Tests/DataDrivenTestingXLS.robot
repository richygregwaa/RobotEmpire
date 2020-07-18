# robot -d results Tests/DataDrivenTestingXLS.robot
# I think this will work if my manual access to Excel was better. Maybe need to download old version of
# Office where I can get a license for just £20
*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/common.robot
Library  DataDriver  ../TestData/TestData.xlsx  sheet_name=Sheet1

Suite Setup  common.Start TestCase
Suite Teardown  common.Finish TestCase
Test Template  Invalid Login Scenarios

*** Test Cases ***
Verify Login Fails with Invalid Creds  ${username}  ${password}  ${error_msg}


*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}  ${error_msg}
    Input Text  ${txtbox_username}  ${username}
    Input Text  ${txtbox_password}  ${password}
    Click Button  ${btn_login}
    Sleep  2s
    Element Should Contain  ${txt_error}  ${error_msg}