*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py


#Данный набор тестов проверяет работоспособность кнопок "CANCEL", "EDIT", "DELETE".
*** Test Cases ***
click_edit
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    Journal Digital    ${norm_title5}    ${norm_isbn}
    Edit    ${new_t}
    [Teardown]    Close Browser

click_delete
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    Journal Digital    ${norm_title5}    ${norm_isbn}
    Delete
    [Teardown]    Close Browser

click_cancel
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    Journal Digital    ${norm_title5}    ${norm_isbn}
    Cancel
    [Teardown]    Close Browser