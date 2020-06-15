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
#    Input Text  id:gh-ac  robot2
#    Input Text  name:_nkw  robot2
#    Click Link  link:Start selling
#    Click Link  partial link:Seller Cen

#    Open Browser  https://developer.salesforce.com/signup  chrome
    Open Browser  https://developer.salesforce.com/signup  firefox

    Maximize Browser Window
    Click Button  //*[@id="onetrust-accept-btn-handler"]
    Input Text  xpath://input[@id='first_name']  GREGWAA
    Input Text  xpath://input[starts-with(@id,'last')]  Gregory
    Input Text  xpath://input[contains(@name,'email')]  richy@hotmail.com
    Input Text  xpath://input[@type='text' and @name='user[postal_code]']  SK10
# XPATH techniques
    Select From List By Value  xpath://select[@name='user[country]']//self::select  AI
#  xpath://select[@name='user[country]']//parent::form  #This represents form of several fields
    Click Element  xpath://select[@name='user[country]']//child::option[13]
#  //div[@class='signup_container']//descendant::div
#  //div[@class='signup_container']//descendant-or-self::div
#  //div[@class='signup_container']//descendant-or-self::div[@class='promo regular']
#  //*[@id='errorbox']//ancestor::div
#  //*[@id='errorbox']//ancestor-or-self::div
#  //*[@id='errorbox']//ancestor-or-self::div[@id='content']
#  //option[@value='VI']//following::option
#  //option[@value='Developer']//following::option                      # (1 of 233)
#  //option[@value='Developer']//following-sibling::option              # (1 of 4 ie under same parent only)
#  //option[@value='Developer']//following-sibling::option[@value='Administrator']
#  //*[@value='AS']//preceding::option
#  //*[@value='AS']//preceding-sibling::option
#  //*[@value='AS']//preceding-sibling::option[@value='US']

# CSS Selector techniques    '#' for id.    '.' for class
    Input Text  css:#first_name  Richy                                  #   '#' represents 'id='
    Input Text  css:input[id=first_name]  Dave
# Using different tags
    Input Text  css:input[name='user[first_name]']  Jim
    Input Text  css:input[placeholder='First']  Jack
    Input Text  css:input.textField[placeholder=First]  Sugar           #   '.' represents 'class='
    Click Button  css:input.signUp                                      #   '.' represents 'class='
    Click Button  css:input[class=signUp]
    Click Button  css:input#submit_btn[type='submit'][value='Sign me up >']

    Input Text  css:input[name^='user[p']  AA22 2AA                     #   '^' means starts with
    sleep  1s
    Input Text  css:input[name$='tal_code]']  BB22 2BB                  #   '$' means ends with
    sleep  1s
    Input Text  css:input[name*='ser[post']  CC33 3CC                   #   '*' means contains
    sleep  1s
    Input Text  css:input[class^='textF'][name*='ser[post']  DD4 4DD    #   Using both '^' and '*'

# Finding Child or Subchild Elements.
# Direct Child using '>' (child combinator)
# Of the 6 children (of job_role) with tags 'Option' select the one that has value of 'Developer'
    Click Element  css:select#job_role>option[value='Developer']

# Child or Subchild using ' ' (descendant combinator)
#   css:form#deorg_form div                                  # Returns 1 of 12 because it includes subchilds
#   css:form#deorg_form>div                                  # Returns 1 of 6 as it only includes direct childs

# Next Sibling using '+'
    Click Element  css:option[value=Developer]+option  # Select the option after Developer which is 'Architect'

# Pseudo classes - first child, last child, nth child, nth last child
    Click Element  css:select#job_role>:first-child         # Select first child option of parent job role (which is '')
    Click Element  css:select#job_role>:last-child          # Select last child option of parent job role (Business Manager/Executive)
    Click Element  css:select#job_role>:nth-child(4)        # Select 4th child
    Click Element  css:select#job_role>:nth-last-child(3)   # Select 3rd child from end
    Click Element  css:select#job_role option:nth-child(2)  # Additionally you could specify the tag 'option'
    Click Element  css:select#job_role *:nth-child(3)       # Also instead of tag 'option' you could use '*'

# Pseudo classes - first of type, last of type, nth of type()
#   css:form#deorg_form>input:first-of-type                 # Select first of type - (unusable hidden element)
#   css:form#deorg_form>div:first-of-type                   # Select first of type - (unusable hidden element)

    Click Element  css:form#deorg_form>input:last-of-type   # Select last of type - 'Username' field
#   css:form#deorg_form>input:nth-of-type(4)                # Select 4th of type  - (unusable hidden element)


#   Click Link  //a[text()=' Terms of Use']
    Sleep  2s
    Close Browser


