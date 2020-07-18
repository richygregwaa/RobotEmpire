# robot -d results Tests/DataDrivenTesting_Builtin.robot

*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/common.robot

Suite Setup  common.Start TestCase
Suite Teardown  common.Finish TestCase
Test Template  Invalid Login Scenarios

*** Test Cases ***                                  USERNAME         PASSWORD        ERROR MESSAGE
Verify Login Fails - Blank Username and Password    ${EMPTY}         ${EMPTY}        Epic sadface: Username is required
Verify Login Fails - Wrong Username                 standard_us      secret_sauce    Epic sadface: Username and password do not match any
Verify Login Fails - LockedOut User                 locked_out_user  secret_sauce    Epic sadface: Sorry, this user has been locked out.
Verify Login Fails - Wrong Password                 standard_user    secret_sa       Epic sadface: Username and password do not match any
Verify Login Fails - Wrong Username and Password    standard_u       secret_s        Epic sadface: Username and password do not match any


*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${Username}  ${password}  ${error_msg}
    Input Text  ${txtbox_username}  ${username}
    Input Text  ${txtbox_password}  ${password}
    Click Button  ${btn_login}
    Sleep  2s
    Element Should Contain  ${txt_error}  ${error_msg}


