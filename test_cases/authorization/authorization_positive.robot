*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

#Suite Setup   Start TestCase
#Suite Teardown  Finish TestCase

#Данный набор тестов проверяет позитивные сценарии авторизации.
*** Test Cases ***
successful_authorization
    Start TestCase
    Login to Webpage    ${user}    ${password}
    Finish TestCase

show_password
    Start TestCase
    Click to Eye  ${password}
    Finish TestCase