*** Settings ***
Resource    keywords_pour_zou.robot
Library    SeleniumLibrary
Library    DataDriver    data/data_login.csv

Suite Setup    Log    Début de la suite de tests (suite setup)
Suite Teardown    Log    Fin de la suite de tests (suite teardown)
Test Setup    Keyword Test Setup
Test Teardown    Keyword Test Teardown
Test Template    Template pour le test

# Ici c'est pour gruger notre copain Eclipse en definissant les variables...
*** Variables ***
${info}    0
${connexionOK}    0
${login}    0
${password}    0
${name}    0

*** Test Cases ***
Test ${info} (on a connexionOK=${connexionOK})
    ${login}    ${password}    ${name}    ${connexionOK}

*** Keywords ***
Keyword Test Setup
    Log    Début du test (test setup)
    Ouvrir site Zou

Keyword Test Teardown
    Log    Fin du test (test teardown)
    Close Browser

Template pour le test
    [Arguments]    ${login}    ${password}    ${name}    ${connexionOK}
    Log    Ici nous sommes dans le test ${TEST_NAME}
    Se connecter    ${login}    ${password}    ${name}    ${connexionOK}