*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py



*** Test Cases ***
Test Case_007
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${norm_title}    ${norm_isbn}
    [Teardown]    Close Browser and log

Test Case_008
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    Journal Physical    ${norm_title2}    ${norm_isbn}
    [Teardown]    Close Browser and log

Test Case_009
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    Novel Physical    ${norm_title3}    ${norm_isbn}
    [Teardown]    Close Browser and log

Test Case_010
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    Technical Digital    ${norm_title4}    ${norm_isbn}
    [Teardown]    Close Browser and log

Test Case_011
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    Journal Digital    ${norm_title5}    ${norm_isbn}
    [Teardown]    Close Browser and log

Test Case_012
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    Novel Digital    ${norm_title6}    ${norm_isbn}
    [Teardown]    Close Browser and log

Test Case_014
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    Journal Digital    ${norm_title5}    ${norm_isbn}
    Edit    ${new_t}
    [Teardown]    Close Browser and log

Test Case_015
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    Journal Digital    ${norm_title5}    ${norm_isbn}
    sleep    5
    Delete
    [Teardown]    Close Browser and log
