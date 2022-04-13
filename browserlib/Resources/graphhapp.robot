*** Settings ***
Resource    ../Resources/PO/Landingpage.robot
Resource    ../Resources/PO/topNavpanel.robot
Resource    ../Resources/PO/LeftNavpanel.robot
Resource    ../Resources/PO/rightpanel.robot
*** Variables ***

*** Keywords ***
open url
        Landingpage.navigate to URL

verify correct page loaded
        Landingpage.verification

Navigating to maps
        topNavpanel.click on Maps

Verify maps is loaded
        topNavpanel.verify the page loaded is Maps

Enter To and From destination
        LeftNavpanel.Inputting to and from destination

Click on submit
        LeftNavpanel.Submit button

verification after submit button
        leftnavpanel.verify submit button clicked

new route
        leftnavpanel.click on more button

add new destination
        leftnavpanel.Add new destination field
verify the res
        leftnavpanel.verify the run results

select a new vehicle
        leftnavpanel.select a different vehicle

close graph on right
        rightpanel.close the graph
