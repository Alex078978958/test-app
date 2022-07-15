*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py


#Данный тест проверяет работоспособность поиска.
*** Test Cases ***
search
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${norm_title}    ${norm_isbn}
    Journal Physical    ${norm_title2}    ${norm_isbn}
    Search Test    ${norm_title2}
    sleep    5
    [Teardown]    Close Browser


