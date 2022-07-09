*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py



*** Test Cases ***
Test Case_001
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    [Teardown]    Close Browser and log

Test Case_002
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Click to Eye  ${password}
    [Teardown]    Close Browser and log

Test Case_003
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${empty_user}    ${password}
    [Teardown]    Close Browser and log

Test Case_004
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${empty_password}
    [Teardown]    Close Browser and log

Test Case_005
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${empty_user}    ${empty_password}
    [Teardown]    Close Browser and log

Test Case_006
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${unregistered_user}    ${unregistered_password}}
    [Teardown]    Close Browser and log

