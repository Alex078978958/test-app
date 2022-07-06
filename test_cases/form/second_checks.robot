*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py



*** Test Cases ***
Test Case_007
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    click button    xpath:/html/body/div/div/button
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[1]/input   ${norm_title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${norm_isbn}
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[2]/button[2]
    click button    xpath:/html/body/div[2]/div/div[2]/button[2]
    [Teardown]    Close Browser and log

Test Case_014
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    click button    xpath:/html/body/div/div/button
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[1]/input   ${norm_title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${norm_isbn}
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[2]/button[2]
    click button    xpath:/html/body/div[2]/div/div[2]/button[2]
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[3]/div/button
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[1]/input  ${norm_title2}
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[2]/div/button[2]
    click button    xpath:/html/body/div[2]/div/div[2]/button[2]
    [Teardown]    Close Browser and log

Test Case_015
    [Setup]    Open Browser and Maximize    ${url}    ${browser_name}
    Login to Webpage    ${user}    ${password}
    click button    xpath:/html/body/div/div/button
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[1]/input   ${norm_title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${norm_isbn}
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[2]/button[2]
    click button    xpath:/html/body/div[2]/div/div[2]/button[2]
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[3]/button
    click button    xpath:/html/body/div[2]/div/div[2]/button[2]
    [Teardown]    Close Browser and log