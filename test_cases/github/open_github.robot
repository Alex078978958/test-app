*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

#Данный тест проверяет работоспособность кнопки гитхаб, которая находится в правом верхнем углу сайта.
*** Test Cases ***
new_window_open_github
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    click button    xpath:/html/body/div/div/div/main/div[1]/div/div[2]/button[1]
    [Teardown]    Close Browser