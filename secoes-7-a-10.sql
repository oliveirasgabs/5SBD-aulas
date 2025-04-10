--Parte 1 – Junções e Produto Cartesiano (Seção 7)
-- 1. Usando a sintaxe proprietária da Oracle, exiba o nome de cada cliente junto com o número de sua conta.
SELECT c.nome, ct.numero_conta FROM clientes c, contas ct WHERE c.id_cliente = ct.id_cliente;

-- 2. Mostre todas as combinações possíveis de clientes e agências (produto cartesiano).
SELECT c.nome AS nome_cliente, a.nome_agencia
FROM clientes c, agencias a;

-- 3. Usando aliases de tabela, exiba o nome dos clientes e a cidade da agência onde mantêm conta.
SELECT c.nome AS nome_cliente, a.cidade AS cidade_agencia FROM clientes c
JOIN contas ct ON c.id_cliente = ct.id_cliente
JOIN agencias a ON ct.id_agencia = a.id_agencia;

-- Seção 8
-- Parte 2 – Funções de Grupo, COUNT, DISTINCT e NVL (Seção 8)
-- 4. Exiba o saldo total de todas as contas cadastradas.
SELECT SUM(saldo) AS saldo_total FROM contas;

-- 5. Mostre o maior saldo e a média de saldo entre todas as contas.
SELECT MAX(saldo) AS maior_saldo, AVG(saldo) AS media_saldo FROM contas;

-- 6. Apresente a quantidade total de contas cadastradas.
SELECT COUNT(*) AS total_contas FROM contas;

-- 7. Liste o número de cidades distintas onde os clientes residem.
SELECT COUNT(DISTINCT cidade) AS cidades_distintas FROM clientes;

-- 8. Exiba o número da conta e o saldo, substituindo valores nulos por zero.
SELECT numero_conta, NVL(saldo, 0) AS saldo_ajustado FROM contas;


-- Seção 9
-- Parte 3 – GROUP BY, HAVING, ROLLUP e Operadores de Conjunto (Seção 9)
-- 9. Exiba a média de saldo por cidade dos clientes.
SELECT c.cidade, AVG(ct.saldo) AS media_saldo
FROM clientes c
JOIN contas ct ON c.id_cliente = ct.id_cliente
GROUP BY c.cidade;

-- 10. Liste apenas as cidades com mais de 3 contas associadas a seus moradores.
SELECT c.cidade, COUNT(ct.id_conta) AS total_contas
FROM clientes c
JOIN contas ct ON c.id_cliente = ct.id_cliente
GROUP BY c.cidade
HAVING COUNT(ct.id_conta) > 3;

-- 11.Utilize a cláusula ROLLUP para exibir o total de saldos por cidade da agência e o total geral.
SELECT a.cidade AS cidade_agencia, SUM(ct.saldo) AS total_saldo
FROM contas ct
JOIN agencias a ON ct.id_agencia = a.id_agencia
GROUP BY ROLLUP(a.cidade);

-- 12. Faça uma consulta com UNION que combine os nomes de cidades dos clientes e das agências, sem repetições.
SELECT cidade FROM clientes
UNION
SELECT cidade FROM agencias;

-- Seção 10
-- Parte 1 – Subconsultas de Linha Única
-- 1. Liste os nomes dos clientes cujas contas possuem saldo acima da média geral de todas as contas registradas.
-- 2. Exiba os nomes dos clientes cujos saldos são iguais ao maior saldo encontrado no banco.
-- 3. Liste as cidades onde a quantidade de clientes é maior que a quantidade média de clientes por cidade.

-- Parte 2 – Subconsultas Multilinha
-- 4. Liste os nomes dos clientes com saldo igual a qualquer um dos dez maiores saldos registrados.
-- 5. Liste os clientes que possuem saldo menor que todos os saldos dos clientes da cidade de Niterói.
-- 6. Liste os clientes cujos saldos estão entre os saldos de clientes de Volta Redonda.

-- Parte 3 – Subconsultas Correlacionadas
-- 7. Exiba os nomes dos clientes cujos saldos são maiores que a média de saldo das contas da mesma agência.
-- 8. Liste os nomes e cidades dos clientes que têm saldo inferior à média de sua própria cidade.

-- Parte 4 – Subconsultas com EXISTS e NOT EXISTS
-- 9. Liste os nomes dos clientes que possuem pelo menos uma conta registrada no banco.
-- 10. Liste os nomes dos clientes que ainda não possuem conta registrada no banco.

-- Parte 5 – Subconsulta Nomeada com WITH
-- 11.Usando a cláusula WITH, calcule a média de saldo por cidade e exiba os clientes que possuem saldo acima da média de sua cidade.