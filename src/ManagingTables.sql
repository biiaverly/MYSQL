DROP DATABASE IF EXISTS bookstore;
DROP DATABASE IF EXISTS bookstore_books;

CREATE DATABASE IF NOT EXISTS bookstore;

USE bookstore;

CREATE TABLE IF NOT EXISTS books (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(100),
  publication_year INT,
  price DECIMAL(10, 2),
  category VARCHAR(50)
);

ALTER TABLE books RENAME TO bookstore_books;

ALTER TABLE bookstore_books
ADD COLUMN language VARCHAR(50) AFTER price,
MODIFY COLUMN price DECIMAL(10, 2) NOT NULL;

INSERT INTO bookstore_books (title, author, publication_year, price, language, category)
VALUES ('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 12.99, 'English', 'Classic');

INSERT INTO bookstore_books (title, author, publication_year, price, language, category)
VALUES ('Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', 1997, 19.99, 'English', 'Fantasy');

INSERT INTO bookstore_books (title, author, publication_year, price, language, category)
VALUES ('A Casa dos Espíritos', 'Isabel Allende', 1982, 25.50, 'Portuguese', 'Fiction');

INSERT INTO bookstore_books (title, author, publication_year, price, language, category)
VALUES ('Cien años de soledad', 'Gabriel García Márquez', 1967, 22.75, 'Spanish', 'Magical Realism');


CREATE TEMPORARY TABLE temp_books AS
SELECT * FROM bookstore_books WHERE publication_year >= 2000;

ALTER TABLE bookstore_books
ADD COLUMN discount DECIMAL(5, 2) GENERATED ALWAYS AS (price * 0.1) STORED;
