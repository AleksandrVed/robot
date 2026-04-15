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

    Fill Text    id=username    admin
    Fill Text    id=password    Admin123
    Click        id=loginbtn

    Save Storage State    auth.json
