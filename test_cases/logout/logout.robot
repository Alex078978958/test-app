*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py


#Данный тест проверяет возможность выхода из аккаунта.
*** Test Cases ***
logout
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    Logout
    [Teardown]    Close Browser
