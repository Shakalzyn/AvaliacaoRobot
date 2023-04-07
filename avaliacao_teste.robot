*** Settings ***
Documentation    Teste robot para avaliação
Resource         resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Enviar formulario
    [Documentation]    Esse envia o formulario do site php travels
    [Tags]             forms
    Acessar a home page do site PHPTRAVELS
    Preencher o formulario Instant Demo
    Resolver conta do SUBMIT e enviar formulario