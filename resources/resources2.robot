*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Open Browser and Maximize
    [Arguments]    ${user_url}    ${user_browser}
    open browser    ${user_url}    ${user_browser}
    maximize browser window
    log    Starting test in ${user_browser}
    log    Test URL: ${user_url}


Close Browser and log
    close browser
    log    Finished test.


Login to Webpage
    [Arguments]    ${user_name}    ${user_password}
    input text    xpath:/html/body/div/div/div/div[2]/div[1]/input    ${user_name}
    input password    xpath:/html/body/div/div/div/div[2]/div[2]/input    ${user_password}
    click button    xpath:/html/body/div/div/div/div[3]/button
    sleep    1
    location should be    http://localhost:8080/#/home


Logic form
    click button    xpath:/html/body/div/div/button
    [Arguments]    ${user_name}    ${user_password}
    input text    xpath:/html/body/div/div/div/div[2]/div[1]/input    ${user_name}
    input password    xpath:/html/body/div/div/div/div[2]/div[2]/input    ${user_password}
    click button    xpath:/html/body/div/div/div/div[3]/button