*** Settings ***
Documentation  Common browser actions
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  ${Blank}  ${Browser}

End Web Test
    Close Browser

Insert Testing data
    Log  I am setting up the test data

Cleanup Testing data
    Log  I am cleaning up the test data(base)