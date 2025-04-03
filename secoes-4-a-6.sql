-- Parte 1 – Funções de Caracteres, Números e Datas (Seção 4)

-- 1. Exiba os nomes dos clientes com todas as letras em maiúsculas.
SELECT UPPER(nome) FROM clientes

-- 2. Exiba os nomes dos clientes formatados com apenas a primeira letra maiúscula.
SELECT CONCAT(UPPER(LEFT(nome, 1))) LOWER(SUBSTRING(nome, 2))

-- 3. Mostre as três primeiras letras do nome de cada cliente.


-- 4. Exiba o número de caracteres do nome de cada cliente.


-- 5. Apresente o saldo de todas as contas, arredondado para o inteiro mais próximo.


-- 6. Exiba o saldo truncado, sem casas decimais.


-- 7. Mostre o resto da divisão do saldo da conta por 1000.


-- 8. Exiba a data atual do servidor do banco.


-- 9. Adicione 30 dias à data atual e exiba como "Data de vencimento simulada".


-- 10.Exiba o número de dias entre a data de abertura da conta e a data atual.