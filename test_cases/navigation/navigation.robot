*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

Test Setup  Start TestCase
Test Teardown  Close Browser

#Данный набор тестов проверяет работоспособность панели навигации.
*** Test Cases ***
go_from_home_in_about
    Login to Webpage    ${user}    ${password}
    Go About

go_from_home_in_github
    Login to Webpage    ${user}    ${password}
    Go Github
