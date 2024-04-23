*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url_base}                          http://analista-teste.seatecnologia.com.br/
${button_adicionar_funcionario}      //*[@id="root"]/main/div[2]/div[2]/div[2]/button
${button_ativo}                      //*[@id="root"]/main/div[2]/div[2]/form/div[2]/button/span
${input_name}                        //*[@id="root"]/main/div[2]/div[2]/form/div[3]/div/div[1]/input
${input_cpf}                         //*[@id="root"]/main/div[2]/div[2]/form/div[3]/div/div[3]/input
${input_rg}                          //*[@id="root"]/main/div[2]/div[2]/form/div[3]/div/div[5]/input
${radio_button_select}               //*[@id="root"]/main/div[2]/div[2]/form/div[3]/div/div[2]/div/label[2]/span[1]/input
${input_birthDay}                    //*[@id="root"]/main/div[2]/div[2]/form/div[3]/div/div[4]/input
${dropdown_open}                     //*[@id="root"]/main/div[2]/div[2]/form/div[3]/div/div[6]/div
${dropdown_cargo_04}                 //*[@title='Cargo 04']
${dropdown_open1}                     //*[@id="root"]/main/div[2]/div[2]/form/div[4]/div/div/div[1]/div
${dropdown_ativid_04}                //*[@title='Ativid 04']
${input_numero_epi}                  //*[@id="root"]/main/div[2]/div[2]/form/div[4]/div/div/div[2]/div/div[2]/input
${button_salvar}                     //*[@id="root"]/main/div[2]/div[2]/form/button

*** Keywords ***
Abrir Navegador e Maximizar
    Open Browser    ${url_base}    chrome
    Maximize Browser Window

Clicar em Adicionar Funcionário
    Click Element   ${button_adicionar_funcionario}

Clicar em Ativo
    Click Element   ${button_ativo}

Preencher Nome
    Input Text      ${input_name}              Janete Doe
    
Preencher CPF
    Input Text      ${input_cpf}               12345678900

Preencher RG
    Input Text      ${input_rg}                5498234

Selecionar Gênero
    Click Element   ${radio_button_select}
    
Preencher Data de Nascimento
    Input Text      ${input_birthDay}          19-01-1900

Abrir Dropdown Cargo e Selecionar Cargo 04 Usando Title
    Click Element   ${dropdown_open}
    Wait Until Element Is Visible   ${dropdown_cargo_04}   timeout=10s
    Click Element   ${dropdown_cargo_04}
    Sleep           1 seconds

Selecionar e Preencher Detalhes do EPI
    Click Element   ${dropdown_open1}
    Wait Until Element Is Visible   ${dropdown_ativid_04}   timeout=12s
    Click Element   ${dropdown_ativid_04}
    Input Text      ${input_numero_epi}        3535
    Sleep           3 seconds

Salvar Funcionário
    Click Element   ${button_salvar}
    

*** Test Cases ***
Adicionar Novo Funcionário e Preencher Detalhes
    Abrir Navegador e Maximizar
    Clicar em Adicionar Funcionário
    Clicar em Ativo
    Preencher Nome
    Preencher CPF
    Preencher RG
    Selecionar Gênero
    Preencher Data de Nascimento
    Abrir Dropdown Cargo e Selecionar Cargo 04 Usando Title
    Selecionar e Preencher Detalhes do EPI
    Salvar Funcionário