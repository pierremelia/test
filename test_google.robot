*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
Test faire une recherche google
    Open Browser    browser=chrome    url=http://www.google.fr
    Log    broserz oiuvert
    #Wait Until Page Contains Element    xpath://span[text()="J'accepte"]
    Wait Until Page Contains Element    introAgreeButton
    Click Element    xpath://span[text()="J'accepte"]    