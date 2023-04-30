*** Settings ***
Documentation       Esta suite testa o site Amazon.com.br
Resource            Amazon_resources.robot
Test Setup          Abrir o navegador
Test Teardown       Fechar o navegador

*** Test Cases ***

Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]     Esse teste verifica o menu eletrônico do site da amazon.com.br
    [Tags]              menus    categorias
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"
    Verificar se aparece a categoria "Tablets"

Caso de testes 02 - Pesquisa de um produto
    [Documentation]        Esse teste verifica a busca de um produto
    [Tags]                 busca_produtos    lista_busca
    Acessar a home page do site Amazon.com.br  #essa keyword já foi implemetada, não precisa fazer de novo
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listado o produto "Console Xbox Series S"

   