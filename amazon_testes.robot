*** Settings ***
Documentation    Esta switch testa o site da Amazom.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de teste 1 - Acesso ao menu "Eletrônicos"
    [Documentation]  Esse teste Verifica o menu eletronicos do site da amazom.com.br
    ...              e verifica a categoria computadores e Informática
    [Tags]           menus    categorias
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Tablets"
    Verificar se aparece a categoria "Eletrônicos para Escritório"
    

Caso de teste 2 - Pesquisa de um Produto
    [Documentation]  Esse teste verifica a busca de um produto
    [Tags]           busca_produtos    lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar se o título da página fica "Console Xbox Series S"
    Verificar o resultado da pesquisa se esta listando o produto "Console Xbox Series S"