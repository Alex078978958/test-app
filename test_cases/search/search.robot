*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

Test Setup  Start TestCase
Test Teardown  Close Browser

#Данный тест проверяет работоспособность поиска.
*** Test Cases ***
search
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${norm_title}    ${norm_isbn}
    Journal Physical    ${norm_title2}    ${norm_isbn}
    Search Test    ${norm_title2}


