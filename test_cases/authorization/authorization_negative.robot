*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

Test Setup  Start TestCase
Test Teardown  Close Browser

#Данный набор тестов проверяет негативные сценарии авторизации.
*** Test Cases ***
unsuccessful_authorization_empty_user_and_entered_password
    Login to Webpage    ${empty_user}    ${password}

unsuccessful_authorization_entered_user_and_empty_password
    Login to Webpage    ${user}    ${empty_password}

unsuccessful_authorization_empty_user_and_empty_password
    Login to Webpage    ${empty_user}    ${empty_password}

unsuccessful_authorization_unregistered_user_and_unregistered_password
    Login to Webpage    ${unregistered_user}    ${unregistered_password}