*Settings *
Library  SeleniumLibrary
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


* Variables *
${URL}   https://react-redux.realworld.io/#/login?_k=gv09dw
${BROWSER}   Chrome
${USER}  user_test
${PASS}  pass_test

*** Test Cases ***
CASO DE TESTE
   Abrir navegador
   Acessar a página home do site
   Login
   Click Login button

* Keywords *
Abrir navegador
   Open Browser  abount:blank   ${BROWSER}

Fechar navegador
   Close Browser


Acessar a página home do site
   Go To    ${URL} 

Login
   Input Text    xpath=//*[@id="main"]/div/div/div/div/div/form/fieldset/fieldset[1]/input   ${USER}
   Input Text    xpath=//*[@id="main"]/div/div/div/div/div/form/fieldset/fieldset[2]/input   ${PASS}

Click Login button
   Click Button   xpath=//*[@id="main"]/div/div/div/div/div/form/fieldset/button
