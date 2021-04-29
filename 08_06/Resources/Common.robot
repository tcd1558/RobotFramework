*** Settings ***
Documentation  Common browser actions
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  ${Blank}  ${BROWSER}
    # Maximize Browser Window

End Web Test
    Close Browser
    # Close All Browser  # Closes all open browsers and resets the browser cache.

Insert Testing data
    Log  I am setting up the test data

Cleanup Testing data
    Log  I am cleaning up the test data(base)