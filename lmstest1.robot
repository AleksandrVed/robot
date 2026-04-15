*** Settings ***
Library    Browser

*** Test Cases ***
Open LMS And Check Title
    New Browser    chromium    headless=true
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page       https://lms3.demo.opentechnology.ru/

    ${title}=    Get Title
    Should Contain    ${title}    В начало | Lms.demo

    Close Browser
