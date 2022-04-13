*** Settings ***
Library    Browser

*** Variables ***
@{Browser} =  chromium  firefox  webkit  Edge
${URL} =  https://www.graphhopper.com/

*** Keywords ***
Start test
    new browser    ${Browser}[0]    false
    new context
    new page    ${URL}
    delete all cookies
    set viewport size    1500   824


End test
    close page
    close browser