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

new_book_journal_physical
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    Journal Physical    ${norm_title2}    ${norm_isbn}
    [Teardown]    Close Browser

new_book_novel_physical
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    Novel Physical    ${norm_title3}    ${norm_isbn}
    [Teardown]    Close Browser

new_book_technical_digital
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    Technical Digital    ${norm_title4}    ${norm_isbn}
    [Teardown]    Close Browser

new_book_journal_digital
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    Journal Digital    ${norm_title5}    ${norm_isbn}
    [Teardown]    Close Browser

new_book_novel_digital
    [Setup]    Start TestCase
    Login to Webpage    ${user}    ${password}
    Novel Digital    ${norm_title6}    ${norm_isbn}
    [Teardown]    Close Browser