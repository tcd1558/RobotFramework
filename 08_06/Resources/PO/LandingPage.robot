*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LandingPageVerificationString1} =  RobotFrameworkTutorial.com Test Client
${LandingPageVerificationString2} =  Welcome To Our Studio!
${LandingPageVerificationElement} =  id=mainNav

*** Keywords ***
Load
    Go to  ${URL}

Verify
    Wait Until Page Contains  ${LandingPageVerificationString1}
    Wait Until Page Contains  ${LandingPageVerificationString2}
    Wait Until Page Contains Element  ${LandingPageVerificationElement}
