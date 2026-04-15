*** Settings ***
Library    Browser

*** Keywords ***
Open Browser To LMS
    New Browser    chromium    headless=true
    New Context
    New Page    https://testlms3kl.ru/

Close Browser Session
    Close Browser

Check Page Title Contains
    [Arguments]    ${expected}
    ${title}=    Get Title
    Should Contain    ${title}    ${expected}

Login And Save State
    New Page    https://testlms3kl.ru/login/

    Wait For Elements State    id=username    visible    10s

    Fill Text    id=username    admin
    Fill Text    id=password    Admin123

    Wait For Elements State    id=loginbtn    visible    10s
    Click        id=loginbtn

    Wait For Elements State    css=body    visible    10s

    Save Storage State

Take Screenshot
    Take Screenshot    filename=browser/screenshot/screenshot.png
