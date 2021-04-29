 *** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TeamTab} =  href="#team"
${TeamBannerText} =  OUR AMAZING TEAM
${TeamBanner} =  Our Amazing Team
${TeamMotto} =  Lorem ipsum dolor sit amet consectetur.
${TeamBannerElement} =  css=#team > div > div:nth-child(1) > div > h2


*** Keywords ***
Open Team Page
    Click Link  ${TeamTab}
    Sleep  2s

Verify Team Page
    Page Should Contain  ${TeamBanner}
    Page Should Contain  ${TeamMotto}

    # Edge and Chrome interprete the character case different
    Element Text Should Be  ${TeamBannerElement}  ${TeamBannerText}

    # To make the comparison case insensitive:
    ${TeamBannerElementText} =  get text  ${TeamBannerElement}
    should be equal as strings  ${TeamBannerElementText}  ${TeamBannerText}  ignore_case=True
    should be equal as strings  ${TeamBannerElementText}  ${TeamBanner}  ignore_case=True