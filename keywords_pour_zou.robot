*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Ouvrir site Zou
    Open Browser    https://services-zou.maregionsud.fr/fr/    firefox
    Wait until page contains element    xpath://span[text()="Identifiez-vous"]
    Accepter cookies
        
Accepter cookies
    Capture page screenshot
    Wait Until Element Is Visible   xpath://button[@id="tarteaucitronPersonalize2"]
    Sleep    1s    
    Capture page screenshot
    Click Button    xpath://button[@id="tarteaucitronPersonalize2"]
    Wait Until Element Is Not Visible    xpath://button[@id="tarteaucitronPersonalize2"]
    Capture page screenshot

Se connecter
    [Arguments]    ${login}    ${password}    ${name}    ${connexionOK}=1    
    Wait until page contains element    xpath://span[text()="Identifiez-vous"]
	click element    xpath://span[text()="Identifiez-vous"]
	Wait until page contains element    xpath://input[@id="is-LoginForm-Username"]    timeout=10s
	Sleep    500ms
	Input text    xpath://input[@id="is-LoginForm-Username"]    ${login}
	Input Text    xpath://input[@id="is-LoginForm-Password"]    ${password}
	Click element    is-Modal-Login-Button
	Run Keyword If    '${connexionOK}' == '1'    Run keywords
	...    Wait Until Page Contains    ${name}    timeout=10s
	...    AND    Log to console    C est bon t es connecte
	Run Keyword If    '${connexionOK}' == '0'    Run keywords
	...    Wait Until Page Contains    Erreur lors de la connexion    timeout=10s
	...    AND    Log To Console    VOila t es pas connecte comme prevu

Modifier telephone
    [Arguments]    ${telephone}
    Log    Modifier telephone a faire    