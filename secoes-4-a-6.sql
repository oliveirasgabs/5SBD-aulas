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

--PARTE 2
-- 11.Apresente o saldo de cada conta formatado como moeda local.
SELECT TO_CHAR(saldo,'R$99,999') AS saldo_formatado FROM contas

-- 12. Converta a data de abertura da conta para o formato 'dd/mm/yyyy'.
SELECT TO_CHAR(data_abertura, 'DD/MM/YYYY') AS data_formatada FROM contas;

-- 13.Exiba o saldo da conta e substitua valores nulos por 0.
SELECT NVL(saldo, 0) AS saldo_ajustado FROM contas;

-- 14.Exiba os nomes dos clientes e substitua valores nulos na cidade por 'Sem cidade'.
SELECT nome, NVL(cidade, 'Sem cidade') AS cidade_ajustada FROM contas;

-- 15. Classifique os clientes em grupos com base em sua cidade:
  -- o 'Região Metropolitana' se forem de Niterói
  -- o 'Interior' se forem de Resende
  --o 'Outra Região' para as demais cidades

  SELECT nome, cidade,
  CASE 
    WHEN cidade = 'Niterói' THEN 'Região Metropolitana'
    WHEN cidade = 'Resende' THEN 'Interior'
    ELSE 'Outra Região'
  END AS classificacao_regiao
FROM contas;

--PARTE 3
-- 16.Exiba o nome de cada cliente, o número da conta e o saldo correspondente.
SELECT c.nome, ct.numero_conta, ct.saldo FROM cliente c JOIN conta ct ON c.id_cliente = ct.id_cliente

-- 17. Liste os nomes dos clientes e os nomes das agências onde mantêm conta.
SELECT c.nome, a.agencia FROM cliente c 
JOIN conta ct ON c.id_cliente = ct.id_cliente
JOIN agencia a ON ct.id_agencia = a.id_agencia

--18. Mostre todas as agências, mesmo aquelas que não possuem clientes vinculados (junção externa esquerda).
SELECT a.nome_agencia, ct.numero_conta, c.nome AS nome_cliente
FROM agencias a
LEFT JOIN contas ct ON a.id_agencia = ct.id_agencia
LEFT JOIN clientes c ON ct.id_cliente = c.id_cliente
