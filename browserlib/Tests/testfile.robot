*** Settings ***
Library    Browser

*** Variables ***

*** Test Cases ***
to verify browser opens
    Start browser
open a new page
    [Tags]    1
    open a new page
switch
    [Tags]    2
    switch to the first page

*** Keywords ***
Start browser
  #  open browser    https://graphhopper.com/maps/
    new browser     chromium  false
    New Page   https://www.reddit.com

    ${title} =  get title   !=  abc
    take screenshot     fullpage =False

open a new page
    new browser  chromium  false
    new page    https://www.reddit.com
    new page    https://graphhopper.com/maps/

switch to the first page
    new browser  chromium  false
    new page    https://www.reddit.com
    new page    https://graphhopper.com/maps/
   @{page ids} =  get page ids
    switch page   ${page ids}[0]
    ${t} =  get title
    log   ${t}
    wait for elements state    id=header-search-bar  visible
    fill text   //*[@id='header-search-bar']  software
    click    //*[@class='icon icon-search']
    ${tt} =  get url
    log  ${tt}

    wait for elements state    //*[@href='/r/software/']   visible
    take screenshot
    sleep  2s








