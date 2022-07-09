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
    log    login successful

Click to Eye
    [Arguments]    ${user_password}
    input password    xpath:/html/body/div/div/div/div[2]/div[2]/input    ${user_password}
    click button    xpath:/html/body/div/div/div/div[2]/div[2]/button

Technical Physical
    [Arguments]    ${title}    ${isbn}
    click button    xpath:/html/body/div/div/button
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[1]/input    ${title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${isbn}
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[3]/div/input[1]
    click button    xpath:/html/body/div[2]/div/ul/li[1]/button

    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    xpath:/html/body/div[2]/div/ul/li[1]/button

    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[2]/button[2]
    sleep    1
    click button    xpath:/html/body/div[2]/div/div[2]/button[2]

Journal Physical
    [Arguments]    ${title}    ${isbn}
    click button    xpath:/html/body/div/div/button
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[1]/input    ${title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${isbn}
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[3]/div/input[1]
    click button    xpath:/html/body/div[2]/div/ul/li[2]/button
    sleep    1
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    xpath:/html/body/div[2]/div/ul/li[1]/button

    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[2]/button[2]
    sleep    1
    click button    xpath:/html/body/div[2]/div/div[2]/button[2]

Novel Physical
    [Arguments]    ${title}    ${isbn}
    click button    xpath:/html/body/div/div/button
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[1]/input    ${title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${isbn}
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[3]/div/input[1]
    click button    xpath:/html/body/div[2]/div/ul/li[3]/button
    sleep    1
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    xpath:/html/body/div[2]/div/ul/li[1]/button

    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[2]/button[2]
    sleep    1
    click button    xpath:/html/body/div[2]/div/div[2]/button[2]

Technical Digital
    [Arguments]    ${title}    ${isbn}
    click button    xpath:/html/body/div/div/button
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[1]/input    ${title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${isbn}
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[3]/div/input[1]
    click button    xpath:/html/body/div[2]/div/ul/li[1]/button
    sleep    1
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    xpath:/html/body/div[2]/div/ul/li[2]/button
    sleep    1
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[2]/button[2]
    sleep    1
    click button    xpath:/html/body/div[2]/div/div[2]/button[2]

Journal Digital
    [Arguments]    ${title}    ${isbn}
    click button    xpath:/html/body/div/div/button
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[1]/input    ${title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${isbn}
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[3]/div/input[1]
    click button    xpath:/html/body/div[2]/div/ul/li[2]/button
    sleep    1
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    xpath:/html/body/div[2]/div/ul/li[2]/button
    sleep    1
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[2]/button[2]
    sleep    1
    click button    xpath:/html/body/div[2]/div/div[2]/button[2]

Novel Digital
    [Arguments]    ${title}    ${isbn}
    click button    xpath:/html/body/div/div/button
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[1]/input    ${title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${isbn}
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[3]/div/input[1]
    click button    xpath:/html/body/div[2]/div/ul/li[3]/button
    sleep    1
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    xpath:/html/body/div[2]/div/ul/li[2]/button
    sleep    1
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[2]/button[2]
    sleep    1
    click button    xpath:/html/body/div[2]/div/div[2]/button[2]

Edit
    [Arguments]    ${new}
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[3]/div/button
    sleep    5
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[1]/input    ${new}
    sleep    1
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[2]/div/button[2]
    sleep    1
    click button    xpath:/html/body/div[2]/div/div[2]/button[2]

Delete
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[3]/button
    sleep    1
    click button    xpath:/html/body/div[2]/div/div[2]/button[2]

Search Test
    [Arguments]    ${search_target}
    input text    xpath:/html/body/div/div/div/main/div[1]/div/div[1]/div/input    ${search_target}
    click button    xpath:/html/body/div/div/div/main/div[1]/div/button[2]
