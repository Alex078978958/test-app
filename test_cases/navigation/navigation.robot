*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py



*** Test Cases ***
Test Case_031
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    click button    xpath:/html/body/div/div/div/main/div[1]/div/button[1]
    sleep    2
    click button    xpath:/html/body/div/div/div/div[1]/ul/li[2]/button
    location should be    http://localhost:8080/#/about
    [Teardown]    Close Browser and log

Test Case_032
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    click button    xpath:/html/body/div/div/div/main/div[1]/div/button[1]
    sleep    2
    click button    xpath:/html/body/div/div/div/div[1]/ul/li[3]/button
    [Teardown]    Close Browser and log
