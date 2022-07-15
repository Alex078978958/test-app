*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

#Suite Setup   Start TestCase
#Suite Teardown  Finish TestCase

#Данный набор тестов проверяет позитивные сценарии авторизации.
*** Test Cases ***
successful_authorization
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    [Teardown]    Finish TestCase

show_password
    [Setup]    Start TestCase
    Click to Eye  ${password}
    [Teardown]    Finish TestCase