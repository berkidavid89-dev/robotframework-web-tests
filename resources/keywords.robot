*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://example.com/login
${BROWSER}   Chrome

*** Keywords ***
Open Demo Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Input Valid Credentials
    Input Text    id=username    demo_user
    Input Text    id=password    demo_pass

Submit Login Form
    Click Button    id=login

Login Should Be Successful
    Page Should Contain    Welcome
