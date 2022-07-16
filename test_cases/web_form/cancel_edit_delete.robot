*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

Test Setup  Start TestCase
Test Teardown  Close Browser

#Данный набор тестов проверяет работоспособность кнопок "CANCEL", "EDIT", "DELETE".
*** Test Cases ***
click_edit
    Login to Webpage    ${user}    ${password}
    Journal Digital    ${norm_title}    ${norm_isbn}
    Edit    ${new_t}

click_delete
    Login to Webpage    ${user}    ${password}
    Journal Digital    ${norm_title}    ${norm_isbn}
    Delete

click_cancel
    Login to Webpage    ${user}    ${password}
    Journal Digital    ${norm_title}    ${norm_isbn}
    Cancel