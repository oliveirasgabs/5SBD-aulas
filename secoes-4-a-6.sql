-- Parte 1 – Funções de Caracteres, Números e Datas (Seção 4)

-- 1. Exiba os nomes dos clientes com todas as letras em maiúsculas.
SELECT UPPER(nome) FROM clientes

-- 2. Exiba os nomes dos clientes formatados com apenas a primeira letra maiúscula.
SELECT INITCAP(nome) AS nome_formatado FROM clientes;

-- 3. Mostre as três primeiras letras do nome de cada cliente.
SELECT SUBSTR(nome,1,3) FROM clientes;

-- 4. Exiba o número de caracteres do nome de cada cliente.
SELECT LENGTH(nome) FROM clientes;

-- 5. Apresente o saldo de todas as contas, arredondado para o inteiro mais próximo.
SELECT ROUND(saldo) AS saldo_arredondado FROM contas;

-- 6. Exiba o saldo truncado, sem casas decimais.
SELECT TRUNC(saldo) AS saldo_truncado FROM contas;

-- 7. Mostre o resto da divisão do saldo da conta por 1000.
SELECT MOD(saldo, 1000) AS saldo_dividido FROM contas;

-- 8. Exiba a data atual do servidor do banco.
SELECT SYSDATE FROM dual

-- 9. Adicione 30 dias à data atual e exiba como "Data de vencimento simulada".
SELECT SYSDATE + 30 AS "Data de vencimento simulada" FROM dual;

-- 10.Exiba o número de dias entre a data de abertura da conta e a data atual.
SELECT SYSDATE - data_abertura AS dias_entre_datas FROM contas;