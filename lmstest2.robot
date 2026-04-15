*** Settings ***
Resource    squash_resources.resource

*** Test Cases ***
lmstest1
    Open Browser To LMS
    Login And Save State
    Close Browser Session
