*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

Test Setup  Start TestCase
Test Teardown  Close Browser

#Данный набор тестов проверяет позитивные сценарии авторизации.
*** Test Cases ***
successful_authorization
    Login to Webpage    ${user}    ${password}

show_password
    Click to Eye  ${password}