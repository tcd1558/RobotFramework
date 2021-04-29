*** Settings ***
Documentation  Practice Robot with the Robot Framework Tutorial Web Site
Resource  ../Resources/Common.robot
Resource  ../Resources/MyTestApp.robot
# Suite Keywords can live in Resources/Common.robot
Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test  # (common)
Test Teardown  Common.End Web Test  # (common)
Suite Teardown  Common.Cleanup Testing Data

#   robot -d Results tests/MyTest.robot

*** Variables ***
${URL} =  http://www.robotframeworktutorial.com/front-office
${BLANK} =  about:blank
${BROWSER} =  Chrome
# ${BROWSER} =  ie
# ${BROWSER} =  edge
# ${BROWSER} =  ff
# ${BROWSER} =  safari



*** Test Cases ***
Browser loaded URL
    [Documentation]  Open Robot Framework tutorial web site
    [Tags]  T1
    # Open the URL in the browser
    MyTestApp.Check RFT Webpage responds

Check top menu is available
    [Documentation]  Check the Top Menue of the Robot Framework tutorial web page
    [Tags]  T2
    MyTestApp.Check RFT TopMenu

Check TEAM
    [Documentation]  Open and check the Team page of the Robot Framework tutorial web site
    [Tags]  T3
    MyTestApp.Check Team
    # MyTestApp.Click on [TEAM]
    # MyTestApp.Check the heading on the TEAM page is correct

*** Keywords ***
