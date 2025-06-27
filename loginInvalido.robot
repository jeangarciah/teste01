*** Settings ***
Library           SeleniumLibrary


*** Test Cases ***
Valida acesso
    Abrir página da SauceDemo
    Capture Page Screenshot    Evidencias_Teste_LoginInvalido/saucedemo.png
    
    preencher o Username
    Capture Page Screenshot    Evidencias_Teste_LoginInvalido/username.png

    preencher o Password
    Capture Page Screenshot    Evidencias_Teste_LoginInvalido/senh.png

    acessar a plataforma
    Capture Page Screenshot    Evidencias_Teste_LoginInvalido/acessoPlataforma.png
    
    clicar no menu
    Capture Page Screenshot    Evidencias_Teste_LoginInvalido/menu.png

    clicar no logout
    Capture Page Screenshot    Evidencias_Teste_LoginInvalido/logout.png

    Close Browser  

*** Keywords ***

Abrir página da SauceDemo
    Open Browser       https://www.saucedemo.com/v1/       firefox    options=add_argument("--incognito")
    Maximize Browser Window
    Sleep   1s
    
preencher o Username
    Input Text      id:user-name       standard_user
preencher o Password
    Input Text      id:password       secret_sauce

acessar a plataforma
    Click Button    id:login-button
    sleep       3s

clicar no menu
    Click Element    xpath=//button[contains(text(), 'Open Menu')]
    sleep       2s

clicar no logout
    Click Element    xpath=//a[contains(text(), 'Logout')]