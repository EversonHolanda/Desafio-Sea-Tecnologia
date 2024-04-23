*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url_base}                          http://analista-teste.seatecnologia.com.br/
${button_Ver_apenas_ativos}      //*[@id="root"]/main/div[2]/div[2]/div[2]/div[1]/button[1]
${button_Limpar_Filtros}          //*[@id="root"]/main/div[2]/div[2]/div[2]/div[1]/button[2]


*** Keywords ***
Abrir Navegador e Maximizar
    Open Browser    ${url_base}    chrome
    Maximize Browser Window

Clicar em Ver Apenas Ativos
    Click Element   ${button_Ver_apenas_ativos} 
    
Clicar em Limpar Filtros
    Click Element   ${button_Limpar_Filtros}
    


*** Test Cases ***
Filtrar Funcionário ativos e Limpar Filtros
    Abrir Navegador e Maximizar
    Clicar em Ver Apenas Ativos
    Clicar em Limpar Filtros
    