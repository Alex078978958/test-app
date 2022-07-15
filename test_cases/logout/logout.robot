*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py


#Данный тест проверяет возможность выхода из аккаунта.
*** Test Cases ***
logout
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    click button    xpath:/html/body/div/div/div/main/div[1]/div/div[2]/button[2]
    [Teardown]    Close Browser
