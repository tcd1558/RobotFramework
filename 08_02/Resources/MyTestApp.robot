*** Settings ***
Documentation  Interaction with the RobotFrameworkTutorial [RFT] Webpage
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopMenu.robot
Resource  ../Resources/PO/TeamPage.robot

*** Keywords ***
Check RFT Webpage responds
    LandingPage.Load
    LandingPage.Verify
    Sleep  2s

Check RFT TopMenu
    LandingPage.Load
    LandingPage.Verify
    Sleep  2s

    # TopMenu.Check Services
    # TopMenu.Check Portfolio
    # TopMenu.Check About
    TopMenu.Check Team
    # TopMenu.Check Contact
    Sleep  2s

Check Team
    LandingPage.Load
    LandingPage.Verify
    Sleep  2s

   # TopMenu.Check Team

    TeamPage.Open Team Page
    TeamPage.Verify Team Page
    Sleep  2s