SELECT * FROM livros;

SELECT nome FROM autores
WHERE nascimento < '1900-01-01';

SELECT livros.titulo
FROM livros
JOIN autores ON livros.autor_id = autores.id
WHERE autores.nome = 'J.K. Rowling';
