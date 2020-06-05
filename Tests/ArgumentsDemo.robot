*** Settings ***


*** Test Cases ***
Argument demo keyword test
    Argument Demo Keyword  rcv  academy

Argument demo keyword test2
    Argument Demo Keyword  test  testing

*** Keywords ***
Argument Demo Keyword
    [Arguments]  ${arg1}  ${arg2}
    Log  ${arg1}
    Log  ${arg2}