*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ServicesTab} =  href="#services"
${PortfolioTab} =  href="#portfolio"
${AboutTab} =  href="#about"
${TeamTab} =  href="#team"
${ContactTab} =  href="#contact"

*** Keywords ***
Check Services
    Page Should Contain Link  ${ServicesTab}

Check Portfolio
    Page Should Contain Link  ${PortfolioTab}

Check About
    Page Should Contain Link  ${AboutTab}

Check Team
    Page Should Contain Link  ${TeamTab}

Check Contact
    Page Should Contain Link  ${ContactTab}
