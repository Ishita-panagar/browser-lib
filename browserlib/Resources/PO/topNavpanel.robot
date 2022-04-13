*** Settings ***
Library    Browser
*** Variables ***
${map} =  //div//a[@href='https://graphhopper.com/maps']


*** Keywords ***
click on Maps
    click    ${map}
    take screenshot
    sleep  2s

verify the page loaded is Maps
         click    ${map}
         sleep     2s
         ${maps_page_url} =   get url
         Log  ${maps_page_url}
         #sleep  2s
         get url    ==  	https://graphhopper.com/maps/
        register keyword to run on failure    take screenshot

