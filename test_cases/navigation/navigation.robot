*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py


#Данный набор тестов проверяет работоспособность панели навигации.
*** Test Cases ***
go_from_home_in_about
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    click button    xpath:/html/body/div/div/div/main/div[1]/div/button[1]
    sleep    1
    click button    xpath:/html/body/div/div/div/div[1]/ul/li[2]/button
    location should be    http://localhost:8080/#/about
    [Teardown]    Close Browser

go_from_home_in_github
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    click button    xpath:/html/body/div/div/div/main/div[1]/div/button[1]
    sleep    1
    click button    xpath:/html/body/div/div/div/div[1]/ul/li[3]/button
    [Teardown]    Close Browser
