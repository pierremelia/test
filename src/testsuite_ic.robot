*** Settings ***
Resource    ../keywords_pour_zou.robot
*** Test Cases ***
Premier test
    Log    Ceci esst le premier test
    
Deuxieme test
    Log    Ceci est le deuxieme test

Troisieme test
    Log    Ceci est le troisieme test

Qautrieme test
    Log    Ceci est le quatrieme test
    Open Browser    https://zou.maregionsud.fr/    chrome
    Wait Until Element Is Visible   xpath://button[@id="tarteaucitronPersonalize2"]
    Sleep    1s    
    Click Button    xpath://button[@id="tarteaucitronPersonalize2"]
    Wait Until Element Is Not Visible    xpath://button[@id="tarteaucitronPersonalize2"]
    Capture page screenshot