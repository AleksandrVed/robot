*** Settings ***
Library   Browser

*** Test Cases ***
Example Test
    New Page    https://lms3.demo.opentechnology.ru/
    Get Text    h1    contains    Playwright

Starting a browser with a page
    New Browser    webkit    headless=true
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page       https://lms3.demo.opentechnology.ru/
    Get Title      ==    Browser
