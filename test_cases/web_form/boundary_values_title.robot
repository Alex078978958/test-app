*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

Test Setup  Start TestCase
Test Teardown  Close Browser

#Данный набор тестов проверяет граничные значения поля "Title".
*** Test Cases ***

lower_limit_value_less
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${title_lower_limit_value_less}    ${norm_isbn}

lower_limit_value_equal
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${title_lower_limit_value_equal}    ${norm_isbn}

lower_limit_value_big
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${title_lower_limit_value_big}    ${norm_isbn}


upper_limit_value_less
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${title_upper_limit_value_less}    ${norm_isbn}

upper_limit_value_equal
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${title_upper_limit_value_equal}    ${norm_isbn}

upper_limit_value_big
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${title_upper_limit_value_big}    ${norm_isbn}