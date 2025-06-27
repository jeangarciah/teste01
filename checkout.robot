*** Settings ***
Library           SeleniumLibrary


*** Test Cases ***
Valida acesso
    Abrir página da SauceDemo
    Capture Page Screenshot    Evidencias_Teste_Checkout/saucedemo.png
    
    preencher o Username
    Capture Page Screenshot    Evidencias_Teste_Checkout/username.png

    preencher o Password
    Capture Page Screenshot    Evidencias_Teste_Checkout/senh.png

    acessar a plataforma
    Capture Page Screenshot    Evidencias_Teste_Checkout/acessoPlataforma.png

    ver um produto
    Capture Page Screenshot    Evidencias_Teste_Checkout/verProduto.png

    adicionar produto ao carrinho
    Capture Page Screenshot    Evidencias_Teste_Checkout/addProduto.png

    acessar o carrinho
    Capture Page Screenshot    Evidencias_Teste_Checkout/carrinho.png

    realizar o checkout
    Capture Page Screenshot    Evidencias_Teste_Checkout/checkout.png

    preencher First Name
    Capture Page Screenshot    Evidencias_Teste_Checkout/firstname.png

    preencher Last Name
    Capture Page Screenshot    Evidencias_Teste_Checkout/lastname.png

    preencher Zip Postal Code
    Capture Page Screenshot    Evidencias_Teste_Checkout/zipcode.png

    ver detalhes do checkout
    Capture Page Screenshot    Evidencias_Teste_Checkout/checkoutDetalhe.png

    finalizar a checkout
    Capture Page Screenshot    Evidencias_Teste_Checkout/finalizar.png

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

realizar o checkout
    Click Element    xpath=//a[@class='btn_action checkout_button']
    sleep       3s
preencher First Name
    Input Text      id:first-name       Vinicius

preencher Last Name
    Input Text      id:last-name       Canedo

preencher Zip Postal Code
    Input Text      id:postal-code     12345

ver detalhes do checkout
    Click Element    xpath=//input[@value='CONTINUE']
    sleep       3s

finalizar a checkout
    Click Element    xpath=//a[@class='btn_action cart_button']
    sleep       6s