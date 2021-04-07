*** Settings ***
Resource    keywords_pour_zou.robot
Library    SeleniumLibrary    

Suite Setup    Log    Début de la suite de tests (suite setup)
Suite Teardown    Log    Fin de la suite de tests (suite teardown)
Test Setup    Keyword Test Setup
Test Teardown    Keyword Test Teardown
Test Template    Template pour le test

*** Test Cases ***
Premier test
    donc ici c'est premier test qui s'appelle ${TEST_NAME}
Deuxieme test
    donc ici c'est deuxieme test qi st'appemle ${TEST_NAME}
*** Keywords ***
Keyword Test Setup
    Log    Début du test (test setup)
    Ouvrir site Zou

Keyword Test Teardown
    Log    Fin du test (test teardown)
    Close Browser

Template pour le test
    [Arguments]    ${nom_du_test}
    Log    Ici nous sommes dans le test ${nom_du_test}