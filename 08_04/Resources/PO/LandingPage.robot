  *** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LandingPageVerificationString1} =  RobotFrameworkTutorial.com Test Client
${LandingPageVerificationString2} =  Welcome To Our Studio!

*** Keywords ***
Load
    Go to  ${URL}

Verify
    Wait Until Page Contains  ${LandingPageVerificationString1}
    Wait Until Page Contains  ${LandingPageVerificationString2}

