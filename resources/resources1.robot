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
    wait until element is visible    //*[text()='add']/ancestor::button
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
    click button    //*[text()='Phisical copy']/ancestor::button
    click button    //*[text()='Create']/ancestor::button
    wait until element is visible    //*[text()='OK']/ancestor::button
    click button    //*[text()='OK']/ancestor::button

Journal Physical
    [Arguments]    ${title}    ${isbn}
    click button    //*[text()='add']/ancestor::button
    input text    //*[@autofocus='autofocus']    ${title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${isbn}
    click button    //*[@class='md-input md-input md-select-value']
    click button    //*[text()='Journal']/ancestor::button
    wait until element is visible    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    //*[text()='Phisical copy']/ancestor::button

    click button    //*[text()='Create']/ancestor::button
    wait until element is visible    //*[text()='OK']/ancestor::button
    click button    //*[text()='OK']/ancestor::button

Novel Physical
    [Arguments]    ${title}    ${isbn}
    click button    //*[text()='add']/ancestor::button
    input text    //*[@autofocus='autofocus']    ${title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${isbn}
    click button    //*[@class='md-input md-input md-select-value']
    click button    //*[text()='Novel']/ancestor::button
    wait until element is visible    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    //*[text()='Phisical copy']/ancestor::button

    click button    //*[text()='Create']/ancestor::button
    wait until element is visible    //*[text()='OK']/ancestor::button
    click button    //*[text()='OK']/ancestor::button

Technical Digital
    [Arguments]    ${title}    ${isbn}
    click button    //*[text()='add']/ancestor::button
    input text    //*[@autofocus='autofocus']    ${title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${isbn}
    click button    //*[@class='md-input md-input md-select-value']
    click button    //*[text()='Technical literature']/ancestor::button
    wait until element is visible    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    //*[text()='Digital copy']/ancestor::button
    click button    //*[text()='Create']/ancestor::button
    wait until element is visible    //*[text()='OK']/ancestor::button
    click button    //*[text()='OK']/ancestor::button

Journal Digital
    [Arguments]    ${title}    ${isbn}
    click button    //*[text()='add']/ancestor::button
    input text    //*[@autofocus='autofocus']    ${title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${isbn}
    click button    //*[@class='md-input md-input md-select-value']
    click button    //*[text()='Journal']/ancestor::button
    wait until element is visible    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    //*[text()='Digital copy']/ancestor::button
    click button    //*[text()='Create']/ancestor::button
    wait until element is visible    //*[text()='OK']/ancestor::button
    click button    //*[text()='OK']/ancestor::button

Novel Digital
    [Arguments]    ${title}    ${isbn}
    click button    //*[text()='add']/ancestor::button
    input text    //*[@autofocus='autofocus']    ${title}
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[2]/input    ${isbn}
    click button    //*[@class='md-input md-input md-select-value']
    click button    //*[text()='Novel']/ancestor::button
    wait until element is visible    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[4]/div/input[1]
    click button    //*[text()='Digital copy']/ancestor::button
    click button    //*[text()='Create']/ancestor::button
    wait until element is visible    //*[text()='OK']/ancestor::button
    click button    //*[text()='OK']/ancestor::button

Edit
    [Arguments]    ${new}
    click button    //*[text()='Edit']/ancestor::button
    input text    xpath:/html/body/div/div/div/main/div[2]/div/div[1]/div[1]/div[1]/input    ${new}
    click button    //*[text()='Edit']/ancestor::button
    wait until element is visible    //*[text()='OK']/ancestor::button
    click button    //*[text()='OK']/ancestor::button

Delete
    click button    //*[text()='Delete']/ancestor::button
    wait until element is visible    //*[text()='OK']/ancestor::button
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
    wait until element is visible    //*[text()='info']/ancestor::button
    click button    //*[text()='info']/ancestor::button
    location should be    http://localhost:8080/#/about

Go Github
    click button    //*[text()='menu']/ancestor::button
    wait until element is visible    //*[text()='GitHub']/ancestor::button
    click button    //*[text()='GitHub']/ancestor::button