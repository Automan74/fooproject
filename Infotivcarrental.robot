*** Settings ***
Documentation
Resource        ../Resources/keywords.robot
Library         SeleniumLibrary
Test Setup     Begin Web Test
Test Teardown  End Web Test

*** Variables ***

${BROWSER} =  chrome
${URL} =  http://rental21.infotiv.net/
${elem} =  GetWebElement id:logout
*** Test Cases ***
User can access Infotiv Car Rental Service
    [Documentation]         Verfiera att sidan laddas
    [Tags]                  Test ladda in sida
    Go to Web Page
User test negativ
    [Documentation]         Skriva in negativ tom textbox, Ska ej logga in EXPCT FAIL
    [Tags]                  Textbox tom
    Go to Web Page
    Choose item

