*** Settings ***
Resource    ../Resources/common.robot
Resource    ../Resources/graphhapp.robot
Test Setup    Start test
Test Teardown    End test
*** Variables ***


*** Test Cases ***
to verify the url loads
    [Documentation]    this is to verify url opens successfully
    [Tags]    url
    set log level    debug
    graphhapp.open url

to verify correct page is loaded
    [Documentation]    this verifies the correct page loaded
    [Tags]    ver
        set log level    debug

    graphhapp.verify correct page loaded

able to click on Maps
    [Documentation]    to verify that Maps links is accessible
    [Tags]    topnav
        set log level    debug

    graphhapp.Navigating to maps

able to verify maps page is loaded
    [Documentation]    to verify maps page is loaded correctly
    [Tags]    ver-maps
        set log level    debug

    graphhapp.Verify maps is loaded

able to enter from destination
    [Documentation]    to verify that user is able to add from value in from field
    [Tags]    from
        set log level    debug

    graphhapp.Enter To and From destination

able to submit the to and from destinations
    [Documentation]    to verify that user is able to click on submit button
    [Tags]    submit
        set log level    debug

    graphhapp.Click on submit

able to verify the results after submit is clicked
    [Documentation]    this is to verify that user can verify serach results
    [Tags]    search
        set log level    debug

    graphhapp.verification after submit button

able to select a new route for racing bike
    [Documentation]    able to click on racing bike and find route(s)
    [Tags]    bike
        set log level    debug

    graphhapp.new route

able to add a new destination field
   [Documentation]    able to click on "+" button
   [Tags]        new
       set log level    debug

    graphhapp.add new destination

able to verify results found
    [Documentation]    able to verify the message from route results
    [Tags]    msg
        set log level    debug

    graphhapp.verify the res

able to get route
    [Documentation]    select a new veh
    [Tags]    nv
        set log level    debug

    graphhapp.select a new vehicle

close the height-graph on right
    [Documentation]    close the graph to see the map clearly
    [Tags]    graph
        set log level    debug

    graphhapp.close graph on right
