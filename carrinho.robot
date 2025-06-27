*** Settings ***
Library           SeleniumLibrary


*** Test Cases ***
Valida acesso
    Abrir página da SauceDemo
    Capture Page Screenshot    Evidencias_Teste_Carrinho/saucedemo.png
    
    preencher o Username
    Capture Page Screenshot    Evidencias_Teste_Carrinho/username.png

    preencher o Password
    Capture Page Screenshot    Evidencias_Teste_Carrinho/senh.png

    acessar a plataforma
    Capture Page Screenshot    Evidencias_Teste_Carrinho/acessoPlataforma.png

    ver um produto
    Capture Page Screenshot    Evidencias_Teste_Carrinho/verProduto.png

    adicionar produto ao carrinho
    Capture Page Screenshot    Evidencias_Teste_Carrinho/addProduto.png

    retornar a página inicial
    Capture Page Screenshot    Evidencias_Teste_Carrinho/retornoProdutos.png

    ver outro produto
    Capture Page Screenshot    Evidencias_Teste_Carrinho/verProduto2.png

    adicionar outro produto no carrinho
    Capture Page Screenshot    Evidencias_Teste_Carrinho/addProduto2.png

    acessar o carrinho
    Capture Page Screenshot    Evidencias_Teste_Carrinho/carrinho.png

    remover produto do carrinho
    Capture Page Screenshot    Evidencias_Teste_Carrinho/removerProduto.png
    

    Close Browser    

*** Keywords ***
Abrir página da SauceDemo
    Open Browser       https://www.saucedemo.com/v1/       edge    options=add_argument("--incognito")
    Maximize Browser Window
    Sleep   1s
    
preencher o Username
    Input Text      id:user-name       standard_user
preencher o Password
    Input Text      id:password       secret_sauce

acessar a plataforma
    Click Button    id:login-button
    sleep       3s

ver um produto
    Click Link    id:item_0_title_link
    sleep       4s

adicionar produto ao carrinho
    Click Element    xpath=//button[contains(text(), 'ADD TO CART')]
    sleep       2s

retornar a página inicial
    Click Element    xpath=//button[contains(text(), '<- Back')]
    sleep       2s

ver outro produto
    Click Link    id:item_3_title_link
    sleep       4s

adicionar outro produto no carrinho
    Click Element    xpath=//button[contains(text(), 'ADD TO CART')]
    sleep       2s

acessar o carrinho
    Click Element    xpath=//a[@class='shopping_cart_link fa-layers fa-fw']
    sleep       2s

remover produto do carrinho
    Click Element    xpath=//button[contains(text(), 'REMOVE')]
    Sleep    2s
