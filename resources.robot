*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}        https://phptravels.com/demo
&{USUARIO}    nome=Felipe    sobrenome=Manoel     busines=Shakalzyn    email=shakalzyn@mail.com
${SUBMIT}     demo


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

 Acessar a home page do site PHPTRAVELS
     Go To    ${URL}
     Wait Until Element Is Visible                locator=${SUBMIT}

Preencher o formulario Instant Demo
    Input Text    locator=first_name        text=${USUARIO.nome}
    Input Text    locator=last_name         text=${USUARIO.sobrenome}
    Input Text    locator=business_name     text=${USUARIO.busines}
    Input Text    locator=email             text=${USUARIO.email}

Resolver conta do SUBMIT e enviar formulario
    ${NUMERO1}    Get Text    locator=numb1 
    ${NUMERO2}    Get Text    locator=numb2
    ${RESULTADO_CONTA}    Evaluate    ${NUMERO1}+${NUMERO2}
    Input Text    locator=number        text=${RESULTADO_CONTA}
    Log    ${RESULTADO_CONTA}
    Click Element    locator=${SUBMIT}
    Sleep    5s
