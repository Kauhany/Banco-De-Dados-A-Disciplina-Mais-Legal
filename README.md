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
