*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ServicesTab} =    xpath=//a[@href="#services"]
${PortfolioTab} =   xpath=//a[@href="#portfolio"]
${AboutTab} =       xpath=//a[@href="#about"]
${TeamTab} =        xpath=//a[@href="#team"]
# ${ContactTab} =     xpath=//a[@href="#contact"]
# ${ContactTab} =     href=#contact     # does not work
# ${ContactTab} =     href="#contact"     # does not work
# ${ContactTab} =     href='#contact'     # does not work
${ContactTab} =     \#contact

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
