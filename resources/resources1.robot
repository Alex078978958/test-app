*** Settings ***
Library    SeleniumLibrary
Variables   ../resources/variables.py


*** Keywords ***
Start TestCase
    open browser    ${url}    ${browser_name}
    maximize browser window

Finish TestCase
    close browser

Login to Webpage
    [Arguments]    ${user_name}    ${user_password}
    input text    //*[@type='text']    ${user_name}
    input password    //*[@type='password']   ${user_password}
    click button    //*[@class='md-button md-raised md-primary md-theme-default']
    sleep    1
    location should be    http://localhost:8080/#/home

Click to Eye
    [Arguments]    ${user_password}
    input password    //*[@type='password']    ${user_password}
    click button    //*[@class='md-button md-icon-button md-dense md-input-action md-toggle-password md-theme-default']

Technical Physical
    [Arguments]    ${title}    ${isbn}
    click button    //*[text()='add']/ancestor::button
    input text    //*[@autofocus='autofocus']    ${title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${isbn}
    click button    //*[@class='md-input md-input md-select-value']
    click button    //*[text()='Technical literature']/ancestor::button

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
    click button    //*[text()='Edit']/ancestor::button
    sleep    5
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[1]/input    ${new}
    sleep    1
    click button    //*[text()='Edit']/ancestor::button
    sleep    1
    click button    //*[text()='OK']/ancestor::button

Delete
    click button    //*[text()='Delete']/ancestor::button
    sleep    1
    click button    //*[text()='OK']/ancestor::button

Cancel
    click button    //*[text()='add']/ancestor::button
    click button    //*[text()='Cancel']/ancestor::button

Search Test
    [Arguments]    ${search_target}
    input text    //*[@class='md-menu']/child::*    ${search_target}
    click button    //*[text()='search']/ancestor::button

Logout
    click button    //*[@class='svg-inline--fa fa-sign-out-alt fa-w-16']/ancestor::button
    location should be    http://localhost:8080/#/login

Go About
    click button    //*[text()='menu']/ancestor::button
    sleep    1
    click button    //*[text()='info']/ancestor::button
    location should be    http://localhost:8080/#/about

Go Github
    click button    //*[text()='menu']/ancestor::button
    sleep    1
    click button    //*[text()='GitHub']/ancestor::button