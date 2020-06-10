# robot -d Results Tests/WebLocators.robot
# Writing your own xpath
# In Chrome Browser. Right-click inspect. Ctrl + F. In Find type //input[@id='first_name']
# The line in the inspect will be highlighted. If in the Find it finds 1/1 then you can use it

*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Weblocators in Robot FW
    [Documentation]  This is a sample test case to demonstrate Weblocators in Robot FW

#    Open Browser  http://www.ebay.com  chrome
    Open Browser  https://developer.salesforce.com/signup  chrome
    Maximize Browser Window
    Click Button  //*[@id="onetrust-accept-btn-handler"]
    Input Text  xpath://input[@id='first_name']  GREGWAA
    Input Text  xpath://input[starts-with(@id,'last')]  Gregory
    Input Text  xpath://input[contains(@name,'email')]  richy@hotmail.com
    Input Text  xpath://input[@type='text' and @name='user[postal_code]']  SK10
#  xpath://select[@name='user[country]']//self::select
#  xpath://select[@name='user[country]']//parent::form
#  xpath://select[@name='user[country]']//child::option[7]
#  //div[@class='signup_container']//descendant::div
#  //div[@class='signup_container']//descendant-or-self::div
#  //div[@class='signup_container']//descendant-or-self::div[@class='promo regular']
#  //*[@id='errorbox']//ancestor::div
#  //*[@id='errorbox']//ancestor-or-self::div
#  //*[@id='errorbox']//ancestor-or-self::div[@id='content']
#  //option[@value='VI']//following::option
#  //option[@value='Developer']//following::option         # (1 of 233)
#  //option[@value='Developer']//following-sibling::option # (1 of 4 ie under same parent only)
#  //option[@value='Developer']//following-sibling::option[@value='Administrator']
#  //*[@value='AS']//preceding::option
#  //*[@value='AS']//preceding-sibling::option
#  //*[@value='AS']//preceding-sibling::option[@value='US']



    sleep  3s
    Click Link  //a[text()=' Terms of Use']
    Sleep  2s
    Close Browser

#    Input Text  id:gh-ac  robot2
#    Input Text  name:_nkw  robot2
#    Click Link  link:Start selling
#    Click Link  partial link:Seller Cen

