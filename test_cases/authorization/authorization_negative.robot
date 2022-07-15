*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

#Test Setup   Start TestCase
#Test Teardown  Finish TestCase


#Данный набор тестов проверяет негативные сценарии авторизации.
*** Test Cases ***
unsuccessful_authorization_empty_user_and_entered_password
    [Setup]    Start TestCase
    Login to Webpage    ${empty_user}    ${password}
    [Teardown]    Close Browser

unsuccessful_authorization_entered_user_and_empty_password
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${empty_password}
    [Teardown]    Close Browser

unsuccessful_authorization_empty_user_and_empty_password
    [Setup]    Start TestCase
    Login to Webpage    ${empty_user}    ${empty_password}
    [Teardown]    Close Browser

unsuccessful_authorization_unregistered_user_and_unregistered_password
    [Setup]    Start TestCase
    Login to Webpage    ${unregistered_user}    ${unregistered_password}}
    [Teardown]    Close Browser