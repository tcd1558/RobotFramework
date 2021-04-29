*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TeamTab} =  href="#team"
# ${TeamBanner} =  OUR AMAZING TEAM
${TeamBanner} =  Our Amazing Team
${TeamMotto} =  Lorem ipsum dolor sit amet consectetur.


*** Keywords ***
Open Team Page
    Click Link  ${TeamTab}
    Sleep  2s

Verify Team Page
    Page Should Contain  ${TeamBanner}
    Page Should Contain  ${TeamMotto}