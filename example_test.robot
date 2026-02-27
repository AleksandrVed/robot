*** Settings ***
Library   Browser

*** Test Cases ***
Example Test
    New Page    https://playwright.dev
    Get Text    h1    contains    Playwright

Starting a browser with a page
    New Browser    webkit    headless=true
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page       https://marketsquare.github.io/robotframework-browser/Browser.html
    Get Title      ==    Browser
