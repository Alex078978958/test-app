*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

Test Setup  Start TestCase
Test Teardown  Close Browser

#Данный тест проверяет работоспособность кнопки гитхаб, которая находится в правом верхнем углу сайта.
*** Test Cases ***
new_window_open_github
    Login to Webpage    ${user}    ${password}
    click button    //*[@class='md-toolbar-section-end']/child::button