*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/resources1.robot
Variables   ../../resources/variables.py

Test Setup  Start TestCase
Test Teardown  Close Browser

#Данный набор тестов проверяет граничные значения поля "ISBN".
*** Test Cases ***

lower_limit_value_less
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${norm_title}    ${isbn_lower_limit_value_less}

lower_limit_value_equal
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${norm_title}    ${isbn_lower_limit_value_equal}

lower_limit_value_big
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${norm_title}    ${isbn_lower_limit_value_big}


upper_limit_value_less
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${norm_title}    ${isbn_upper_limit_value_less}

upper_limit_value_equal
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${norm_title}    ${isbn_upper_limit_value_equal}

upper_limit_value_big
    Login to Webpage    ${user}    ${password}
    Technical Physical    ${norm_title}    ${isbn_upper_limit_value_big}