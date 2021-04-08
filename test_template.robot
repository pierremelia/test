*** Settings ***
Test Template    Ce que va faire mon test
*** Test Cases ***
Premier test
    mon_param1    deuxieme argument pour test1
Deuxieme test
    la c'est autre chose    deuxieme argument pour test2
*** Keywords ***
Ce que va faire mon test
    [Arguments]    ${param1}    ${param2}
    Log    Ceci est le keywrod de template (${param1})
    Log    Et la le deuxieme parametre (${param2})