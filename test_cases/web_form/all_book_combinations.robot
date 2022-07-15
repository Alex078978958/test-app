*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py


#Данный набор тестов проверяет все возможные комбинации полей "Category" и "Format".
*** Test Cases ***
new_book_technical_physical
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${norm_title}    ${norm_isbn}
    [Teardown]    Close Browser

