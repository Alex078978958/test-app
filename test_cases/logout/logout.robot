*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

Test Setup  Start TestCase
Test Teardown  Close Browser

#Данный тест проверяет возможность выхода из аккаунта.
*** Test Cases ***
logout
    Login to Webpage    ${user}    ${password}
    Logout
