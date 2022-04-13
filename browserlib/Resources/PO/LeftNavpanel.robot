*** Settings ***
Library    Browser

*** Variables ***
${map} =  //div//a[@href='https://graphhopper.com/maps']
${URL} =  https://www.graphhopper.com/

*** Keywords ***
Inputting to and from destination
    click    ${map}
    wait for elements state    //*[@id='0_Input']   visible
    fill text    //*[@id='0_Input']    Iceland
    take screenshot    fullscreen
    wait for elements state    //*[@id='1_Input']  visible
    fill text    //*[@id='1_Input']   Ireland
    sleep  2s
    take screenshot    fullscreen

Submit button
    click    ${map}
    wait for elements state    //*[@id='0_Input']   visible
    fill text    //*[@id='0_Input']    Iceland
    take screenshot    fullscreen
    wait for elements state    //*[@id='1_Input']  visible
    fill text    //*[@id='1_Input']   Ireland
    sleep  2s
    take screenshot
    click    //*[@id='searchButton']
    sleep  2s

verify submit button clicked
    click    ${map}
    fill text    //*[@id='0_Input']    Iceland
    wait for elements state    //*[@id='1_Input']  visible
    fill text    //*[@id='1_Input']   Ireland
    click    //*[@id='searchButton']
    sleep  2s
    take screenshot
    get element    //*[contains(text(),'Cannot find point 0: 64.984182,-18.105901')]

click on more button
    click    ${map}
    click    //a[@id='more-vehicle-btn']
    click    //img[@src='img/racingbike.png']
    fill text    //*[@id='0_Input']    Iceland
    wait for elements state    //*[@id='1_Input']  visible
    fill text    //*[@id='1_Input']   Ireland
    click    //*[@id='searchButton']
    sleep  2s
    take screenshot

Add new destination field
    click    ${map}
    click    //*[@id='x_pointAdd']
    sleep  2s
    wait for elements state    id=2_Input  visible
    fill text    //*[@id='0_Input']    Iceland
    fill text    //*[@id='1_Input']     Ireland
    click   //div[@class='autocomplete-suggestion'][@data-index='0']
    sleep  3s
    wait for elements state    //*[@id='2_Input']   visible
    fill text    //*[@id='2_Input']   Italy
    press keys    //*[@id='1_Input']    Enter
    sleep  2s
    wait for elements state    id=searchButton  visible
    click    //*[@id='searchButton']

Verify the run results
    click    ${map}
    click    //*[@id='x_pointAdd']
    sleep  2s
    wait for elements state    id=2_Input  visible
    fill text    //*[@id='0_Input']    Iceland
    fill text    //*[@id='1_Input']     Ireland
    click   //div[@class='autocomplete-suggestion'][@data-index='0']
    sleep  3s
    wait for elements state    //*[@id='2_Input']   visible
    fill text    //*[@id='2_Input']   Italy
    press keys    //*[@id='1_Input']    Enter
    sleep  2s
    wait for elements state    id=searchButton  visible
    click    //*[@id='searchButton']
    sleep  2s
    take screenshot
    get element    //*[contains(text(),'Cannot find point 0: 64.984182,-18.105901')]


select a different vehicle
    click  ${map}
    click    ${map}
    click    //*[@id='x_pointAdd']
    sleep  2s
    wait for elements state    id=2_Input  visible
    fill text    //*[@id='0_Input']    Iceland
    fill text    //*[@id='1_Input']     Ireland
    click   //div[@class='autocomplete-suggestion'][@data-index='0']
    sleep  3s
    wait for elements state    //*[@id='2_Input']   visible
    fill text    //*[@id='2_Input']   Italy
    press keys    //*[@id='1_Input']    Enter
    sleep  2s
    click  //a[@id='more-vehicle-btn']
    click  //*[@id='mtb']
    wait for elements state    id=searchButton  visible
    click    //*[@id='searchButton']
    sleep  2s
    take screenshot