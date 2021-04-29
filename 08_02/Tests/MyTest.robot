*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/MyTestApp.robot
# Suite Keywords can live in Resources/Common.robot
Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test  # (common)
Test Teardown  Common.End Web Test  # (common)
Suite Teardown  Common.Cleanup Testing Data

*** Variables ***
${URL} =  http://www.robotframeworktutorial.com/front-office
${BLANK} =  about:blank
${BROWSER} =  Chrome

*** Test Cases ***
Browser loaded URL
    [Documentation]  Practice Robot Framework on the tutorial web site
    # Open the URL in the browser
    MyTestApp.Check RFT Webpage responds

Check top menu is available
    MyTestApp.Check RFT TopMenu

Check TEAM
    MyTestApp.Check Team
    # MyTestApp.Click on [TEAM]
    # MyTestApp.Check the heading on the TEAM page is correct

*** Keywords ***
