*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords.robot

*** Test Cases ***
Valid Login
    Open Demo Login Page
    Input Valid Credentials
    Submit Login Form
    Login Should Be Successful
    Close Browser
