*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${env}  qa
&{url}  qa=https://www.ebay.com  uat=http://uat.demo.com  dev=http://dev.demo.com

*** Keywords ***


Start TestCase
    #Open Browser  ${url.qa}  chrome
    Open Browser  ${url.${env}}  chrome
    Maximize Browser Window

Finish TestCase
    Close Browser