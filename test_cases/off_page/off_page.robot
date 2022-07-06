*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

*** Test Cases ***
Test Case_035
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    click button    xpath:/html/body/div/div/div/main/div[1]/div/div[2]/button[2]
    sleep    5
    [Teardown]    Close Browser and log
