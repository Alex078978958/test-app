*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py


#Данный набор тестов проверяет работоспособность панели навигации.
*** Test Cases ***
go_from_home_in_about
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    Go About
    [Teardown]    Close Browser

go_from_home_in_github
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    Go Github
    [Teardown]    Close Browser
