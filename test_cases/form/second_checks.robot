*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources2.robot
Variables   ../../resources/variables.py



*** Test Cases ***
First Test Case
    [Setup]    open browser    ${url}    ${browser_name}
    maximize browser window
    input text    xpath:/html/body/div/div/div/div[2]/div[1]/input  test
    input text    xpath:/html/body/div/div/div/div[2]/div[2]/input  test
    click button    xpath:/html/body/div/div/div/div[3]/button
#    sleep    5
    [Teardown]    close browser