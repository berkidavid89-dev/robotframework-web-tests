*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://practicetestautomation.com/practice-test-login/
${BROWSER}      Chrome
${USERNAME}     student
${PASSWORD}     Password123

*** Test Cases ***
Valid Login Should Succeed
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=submit
    Page Should Contain    Logged In Successfully
    Close Browser
