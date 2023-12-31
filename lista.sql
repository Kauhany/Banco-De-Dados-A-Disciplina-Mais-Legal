SELECT * FROM livros;

SELECT nome FROM autores
WHERE nascimento < '1900-01-01';

SELECT livros.titulo
FROM livros
JOIN autores ON livros.autor_id = autores.id
WHERE autores.nome = 'J.K. Rowling';

SELECT alunos.nome
FROM alunos
JOIN matriculas ON alunos.id = matriculas.aluno_id
WHERE matriculas.curso = 'Engenharia de Software';

SELECT produto, SUM(receita) AS receita_ttl
FROM vendas
GROUP BY produto;

SELECT autores.nome AS autor, COUNT(livros.id) AS ttl_livros
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.nome; 

SELECT curso, COUNT(*) AS total_alunos
FROM matriculas
GROUP BY curso;

SELECT produto, AVG(receita) AS media_Receita
FROM vendas
GROUP BY produto;

SELECT produto
FROM vendas
GROUP BY produto
HAVING SUM(receita) > 10000;

SELECT autores.nome, COUNT(livros.id) AS ttl_livros
FROM autores
JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.id
HAVING COUNT(livros.id) > 2;

SELECT livros.titulo AS livro, autores.nome AS autor
FROM livros
JOIN autores ON livros.autor_id = autores.id;

SELECT alunos.nome, matriculas.curso
FROM alunos
RIGHT JOIN matriculas ON alunos.id = matriculas.aluno_id;

SELECT autores.nome AS Autor, livros.titulo AS Livro
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id;

SELECT alunos.nome, matriculas.curso
FROM alunos
RIGHT JOIN matriculas ON alunos.id = matriculas.aluno_id;

SELECT alunos.nome AS Aluno, matriculas.curso AS Curso
FROM alunos
INNER JOIN matriculas ON alunos.id = matriculas.aluno_id;

SELECT autores.nome AS Autor, COUNT(livros.id) AS Quantlivros
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.nome
ORDER BY Quantlivros DESC
LIMIT 1;

SELECT produto, MIN(receita) AS Menor_Rec
FROM vendas
GROUP BY produto;

SELECT alunos.nome AS Aluno, COUNT(matriculas.id) AS ttl_matricula
FROM alunos
LEFT JOIN matriculas ON alunos.id = matriculas.aluno_id
GROUP BY alunos.nome;

SELECT produto, COUNT(id) AS QuantTransacoes
FROM vendas
GROUP BY produto
ORDER BY QuantTransacoes DESC
LIMIT 1;
