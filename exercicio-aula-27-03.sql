-- 3. Questões
-- 1. 1. Liste todos os alunos matriculados no curso de "Banco de Dados".
--Com apelido
SELECT a.aluno_id, a.nome, a.email
FROM aluno a
JOIN matricula m ON a.aluno_id = m.aluno_id
JOIN curso c ON m.curso_id = c.curso_id
WHERE c.titulo = 'Banco de Dados';

-- Sem apelido
SELECT aluno.aluno_id, aluno.nome, aluno.email
FROM aluno
JOIN matricula ON aluno.aluno_id = matricula.aluno_id
JOIN curso ON matricula.curso_id = curso.curso_id
WHERE curso.titulo = 'Banco de Dados';

-- 2. 2. Liste todos os cursos com carga horária maior que 40 horas.
SELECT * FROM curso WHERE carga_horaria > 40

-- 3. 3. Liste os alunos que ainda não receberam nota.
SELECT a.aluno_id, a.nome, a.email
FROM aluno a
JOIN matricula m ON a.aluno_id = m.aluno_id
WHERE m.nota is NULL

-- 4. 4. Liste as matrículas realizadas depois do dia 01/01/2024.
SELECT *
FROM matricula
WHERE data_matricula > '01-01-2024'

-- 5. 5. Mostre os cursos com carga horária entre 30 e 60 horas.
SELECT *
FROM curso
WHERE carga_horaria BETWEEN 30 AND 60
-- 6. 6. Liste os alunos com e-mails do domínio @gmail.com.
SELECT *
FROM aluno
WHERE email LIKE '%@gmail.com'

-- 7. 7. Liste o nome do aluno, título do curso e data da matrícula.
-- 8. 8. Liste os alunos e as notas que receberam em cada curso.
-- 9. 9. Mostre os cursos que o aluno chamado "João Silva" está matriculado.
-- 10. 10. Liste os títulos dos cursos que possuem mais de um aluno matriculado.
-- 11. 11. Mostre todos os alunos sem matrícula em nenhum curso.
-- 12. 12. Mostre os cursos sem nenhum aluno matriculado.
-- 13. 13. Liste os nomes dos alunos e a quantidade de cursos em que estão matriculados.
-- 14. 14. Calcule a nota média de todos os alunos.
-- 15. 15. Calcule a média da nota por curso.
-- 16. 16. Encontre a maior nota registrada.
-- 17. 17. Mostre o aluno com a menor nota.
-- 18. 18. Mostre a quantidade total de matrículas por curso.
-- 19. 19. Liste os alunos com média de nota maior ou igual a 8.0.
-- 20. 20. Mostre a média, menor e maior nota por curso.