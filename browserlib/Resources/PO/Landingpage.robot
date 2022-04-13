*** Settings ***
Library    Browser

*** Variables ***

${URL} =  https://www.graphhopper.com/

*** Keywords ***
navigate to URL
    new page    ${URL}
    ${text_url} =  get url
    ${text_title} =  get title
    log   ${text_url}
    log   ${text_title}

verification
    new page    ${URL}
    ${text_url} =  get url
    ${text_title} =  get title
    ${yes} =  Get url  ==   ${text_url}
    ${correct} =  get title    ==   ${text_title}
    Log   ${yes}
    Log   ${correct}
