*** Settings ***
Library    SeleniumLibrary    
Resource    TestBase.robot
Resource    ../Pages/PracticeFormPage.robot

Suite Setup    TestBase.startdriver
Suite Teardown    TestBase.closedriver

*** Test Cases ***
Practice Form 
    Go To    http://www.practiceselenium.com/practice-form.html
    PracticeFormPage.Practice_Form
    sleep    2s 
    Element Should Contain    ${response_message}    We're passionate about tea.     