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
    Ouvrir site Zou
    Capture Page Screenshot    