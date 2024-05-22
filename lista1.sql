INSERT INTO çivros (titulo, autor, ano_publicacao, status, categoria,  isbn, editora, apginas, idioma)
VALUES
('As Crônicas de Nárnia', 'C.S. Lewis', '1950', 'disponível','Fantasia','978-0064471190', 'HarperCollins', '768', 'Inglês');



INSERT INTO livros (titulo, autor, ano_publicacao, status, categoria,  isbn, editora, paginas, idioma)
VALUES 
('Cem Anos de Solidão', 'Gabriel Garcia Marquez', '1967', 'disponível', 'Ficção', '978-0241968581', 'Penguin Books', '422', 'Espanhol')
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', '1997', 'disponível', 'Fantasia', '978-0439708180', 'Bloomsbury', '309', 'Inglês')
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', '1954', 'disponível', 'Fantasia', '978-0618640157', 'HarperCollins', '423', 'Inglês');

INSERT INTO Livros (ISBN, Título, Autor, Ano_Publicação, Número_Páginas, Categoria, Editora, Idioma, Disponibilidade)
VALUES ('978-1234567890', 'A História do Mundo em 100 Objetos', 'Neil MacGregor', 2010, 700, 'História', 'Editora XYZ', 'Português', TRUE);

UPDATE Livros
SET Disponibilidade = FALSE
WHERE Ano_Publicação < 2000;

UPDATE Livros
SET Editora = 'Plume Books'
WHERE Título = '1984';

UPDATE Livros
SET Idioma = 'Inglês'
WHERE Editora = 'Penguin Books';

UPDATE Livros
SET Título = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE ISBN = '978-0439708180';

DELETE FROM Livros
WHERE Categoria = 'Terror';

DELETE FROM Livros
WHERE Idioma = 'Francês' AND Ano_Publicação < 1970;


DELETE FROM Livros
WHERE Título = 'As Crônicas de Nárnia';

DELETE FROM Livros
WHERE Editora = 'Penguin Books';

SELECT * FROM Livros WHERE Número_Páginas > 500;

SELECT Categoria, COUNT(*) AS Quantidade
FROM Livros
GROUP BY Categoria;

SELECT * FROM Livros LIMIT 5;

SELECT SUM(Número_Páginas) AS Total_Páginas, AVG(Número_Páginas) AS Média_Páginas
FROM Livros
WHERE Categoria = 'Drama';

SELECT AVG(Ano_Publicação) AS Média_Ano_Publicação
FROM Livros
WHERE Disponibilidade = TRUE;

SELECT MAX(Ano_Publicação) AS Livro_Mais_Recente, MIN(Ano_Publicação) AS Livro_Mais_Antigo
FROM Livros;

SELECT * FROM Livros ORDER BY Ano_Publicação DESC;

SELECT Título FROM Livros WHERE Idioma = 'Inglês')
UNION
(SELECT Título FROM Livros WHERE Idioma = 'Português');

SELECT * FROM Livros WHERE Autor = 'George Orwell';