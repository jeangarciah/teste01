*** Settings ***
Library           SeleniumLibrary


*** Test Cases ***
Valida acesso
    Abrir página da SauceDemo
    Capture Page Screenshot    Evidencias_Teste_ValidarProdutos/saucedemo.png
    
    preencher o Username
    Capture Page Screenshot    Evidencias_Teste_ValidarProdutos/username.png

    preencher o Password
    Capture Page Screenshot    Evidencias_Teste_ValidarProdutos/senh.png

    acessar a plataforma
    Capture Page Screenshot    Evidencias_Teste_ValidarProdutos/acessoPlataforma.png
    
    ver um produto
    Capture Page Screenshot    Evidencias_Teste_ValidarProdutos/verProduto.png

    retornar para o inicio
    Capture Page Screenshot    Evidencias_Teste_ValidarProdutos/retorno_produtos.png

    ordenar de A a Z 
    Capture Page Screenshot    Evidencias_Teste_ValidarProdutos/ordenar1.png
    
    ordenar de Z a A    
    Capture Page Screenshot    Evidencias_Teste_ValidarProdutos/ordenar2.png

    ordenar do menor para maior
    Capture Page Screenshot    Evidencias_Teste_ValidarProdutos/ordenar3.png

    ordenar do maior para menor 
    Capture Page Screenshot    Evidencias_Teste_ValidarProdutos/ordenar4.png

    

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
    Click Link    id:item_5_title_link
    sleep       4s

retornar para o inicio
    Click Element    xpath=//button[contains(text(), '<- Back')]
    sleep       2s

ordenar de A a Z 
    Click Element   xpath=//select[@class='product_sort_container']
    Click Element    xpath=//option[@value='az']
    sleep       3s

ordenar de Z a A
    Click Element   xpath=//select[@class='product_sort_container']
    Click Element    xpath=//option[@value='za']
    sleep       3s

ordenar do menor para maior
    Click Element   xpath=//select[@class='product_sort_container']
    Click Element    xpath=//option[@value='lohi']
    sleep       3s

ordenar do maior para menor 
    Click Element   xpath=//select[@class='product_sort_container']
    Click Element    xpath=//option[@value='hilo']
    sleep       3s