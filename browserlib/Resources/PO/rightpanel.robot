*** Settings ***
Library    Browser
Resource   /Resources/PO/LeftNavpanel.robot

*** Variables ***

*** Keywords ***
close the graph
    Leftnavpanel.select a different vehicle
    click  //*[@class='heightgraph-close-icon']
    sleep  2s
    take screenshot
