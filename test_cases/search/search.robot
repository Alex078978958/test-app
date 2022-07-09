*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py



*** Test Cases ***
Test Case_036
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${norm_title}    ${norm_isbn}
    Journal Physical    ${norm_title2}    ${norm_isbn}
    Novel Physical    ${norm_title3}    ${norm_isbn}
    Technical Digital    ${norm_title4}    ${norm_isbn}
    Journal Digital    ${norm_title5}    ${norm_isbn}
    Novel Digital    ${norm_title6}    ${norm_isbn}
    Search Test    ${norm_title6}
    sleep    5
    [Teardown]    Close Browser and log


