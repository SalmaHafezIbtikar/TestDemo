*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${firstName}  xpath://*[@id="wsb-element-00000000-0000-0000-0000-000452032346"]/div/form/fieldset/div[1]/p[2]/input
${LastName}   xpath://*[@id="wsb-element-00000000-0000-0000-0000-000452032346"]/div/form/fieldset/div[1]/p[3]/input
${Sex}    sex
${Year}   exp
${Date}   xpath://*[@id="datepicker"]
${BlackTea}  xpath://*[@id="tea1"]
${RedTea}    xpath://*[@id="tea2"]
${olongoTea}   xpath://*[@id="tea3"]
${Break}        xpath://*[@id="tool-0"]
${harmless_addiction}    xpath://*[@id="tool-1"]
${one_of_those}      xpath://*[@id="tool-2"]
${country}   id:continents
${commands}   id:selenium_commands
${Ok_btn}   xpath://*[@id="submit"]
${response_message}   xpath://*[@id="wsb-element-00000000-0000-0000-0000-000450914886"]/div

*** Keywords ***
Practice_Form 
    Input Text    ${firstName}    Admin    
    sleep    2s 
    Input Text    ${LastName}    Admin     
    sleep    2s 
    Select Radio Button    ${Sex}    Female
    sleep    2s 
    Select Radio Button    ${Year}    4
    sleep    2s 
    Input Text    ${Date}    04/24/2021    
    sleep    2s 
    Select Checkbox    ${RedTea}
    sleep    2s 
    Select Checkbox    ${Break}
    sleep    2s 
    Select Checkbox    ${harmless_addiction}
    sleep    2s 
    Select From List By Index    ${country}    4
    sleep    2s 
    Select From List By Index    ${commands}   1
    sleep    2s 
    Click Button    ${Ok_btn}    
        
    
