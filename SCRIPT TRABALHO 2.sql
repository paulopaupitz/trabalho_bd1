-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE CLIENTE (
cliente_id INTEGER PRIMARY KEY,
cliente_nome VARCHAR(10),
cliente_email VARCHAR(10),
residencial INTEGER,
celular INTEGER
)

CREATE TABLE EMPRESA (
emp_nome VARCHAR(10),
emp_cnpj VARCHAR(10)
)

CREATE TABLE PASSAGEM (
passagem_id VARCHAR(10) PRIMARY KEY,
num_poltrona VARCHAR(10),
preço_poltrona VARCHAR(10),
cliente_id INTEGER,
FOREIGN KEY(cliente_id) REFERENCES CLIENTE (cliente_id)
)

CREATE TABLE ESTADO (
id_estado INTEGER,
nome_estado VARCHAR(25)
)

CREATE TABLE VIAGEM (
viagem_status CHAR(10),
horario_partida DATETIME,
horario_chegada DATETIME,
viagem_id INTEGER PRIMARY KEY,
passagem_id VARCHAR(10),
FOREIGN KEY(passagem_id) REFERENCES PASSAGEM (passagem_id)
)

CREATE TABLE FUNCIONARIOS (
func_nome VARCHAR(10),
func_id INTEGER PRIMARY KEY,
func_email VARCHAR(20),
func_cpf INTEGER
)

CREATE TABLE FORNECEDOR (
fornecedor_nome VARCHAR(10)
)

CREATE TABLE ESTOQUE (
estoque_cod VARCHAR(10),
valor_itens INTEGER,
qntd_itens INTEGER
)

CREATE TABLE ONIBUS (
onibus_id INTEGER PRIMARY KEY,
onibus_modelo VARCHAR(10),
onibus_combu VARCHAR(10),
onibus_motora VARCHAR(10)
)

CREATE TABLE ENDEREÇO (
end_rua VARCHAR(10),
end_cep INTEGER,
end_num INTEGER,
end_bairro VARCHAR(10)
)

