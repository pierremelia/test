*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Resource    keywords_pour_zou.robot
*** Test Cases ***
Ceci est mon premier test
	Log    Test ceci sera affiche
	Ouvrir site Zou
	Input Text    is-Journey-Departure    vauvenargues
	Capture page screenshot
    Wait until page contains element    xpath://div[text()="Vauvenargues"]
    Capture page screenshot
    Click element    xpath://div[text()="Vauvenargues"]
	Input Text    is-Journey-Arrival    Gare Marseille
	Wait until page contains element    xpath://div[text()="Gare de Marseille-St-Charles"]
	click element    xpath://div[text()="Gare de Marseille-St-Charles"]
	Log    Nous allons prendre itineraire en velo
	Wait Until Element Is Visible    xpath://i[contains(@class,"is-Icon-sim-BIKE")]
	Click Element    xpath://i[contains(@class,"is-Icon-sim-BIKE")]
	Wait Until Element Is Visible    xpath://span[@class="is-Result-Modes-Distance"]
	Element Text Should Be    xpath://span[@class="is-Result-Modes-Distance"]    43,4 km

Test Connexion Joshua
    Log    Test ceci sera affiche 2
    Ouvrir site Zou
    Se connecter    joshuaaa@yopmail.com    Bzerg_121!    aa joshua

Test connexion Dubois OK
    Ouvrir site Zou
    Se connecter    juliemartin75@protonmail.com    Giroud7544@    Dubois Julien
    
Test connexion mauvais mot de passe
    Ouvrir site Zou
    Se connecter    juliemartin75@protonmail.com    mbappe    Dubois Julien    0