*** Settings ***
Documentation  Interaction with the RobotFrameworkTutorial [RFT] Webpage
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopMenu.robot
Resource  ../Resources/PO/TeamPage.robot

*** Keywords ***
Check RFT Webpage responds
    [Documentation]  Load and Verify
    Log  Load and Verify
    LandingPage.Load
    LandingPage.Verify
    Sleep  2s

Check RFT TopMenu
    [Documentation]  Find Top Menu
    Log  Load and Verify
    LandingPage.Load
    LandingPage.Verify
    Sleep  2s

    Log  Find Top Menu
    TopMenu.Check Services
    TopMenu.Check Portfolio
    TopMenu.Check About
    TopMenu.Check Team
    TopMenu.Check Contact
    Sleep  2s

Check Team
    [Documentation]  Open Team and Verify
    Log  Load and Verify
    LandingPage.Load
    LandingPage.Verify
    Sleep  2s

    Log  Check for Team Tab
    TopMenu.Check Team

    Log  Open Team and Verify
    TeamPage.Open Team Page
    TeamPage.Verify Team Page
    Sleep  2s