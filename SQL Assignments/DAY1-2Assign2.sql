create database LibraryManagementSystem;
use LibraryManagementSystem;
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) UNIQUE NOT NULL
);

INSERT INTO Categories (category_name) VALUES 
('Fiction'),
('Non-Fiction'),
('Science'),
('History'),
('Biography');
select * from Categories


CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(13) UNIQUE NOT NULL,
    publication_year YEAR CHECK (publication_year >= 1500),
    publisher VARCHAR(255),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);
INSERT INTO Books (title, isbn, publication_year, publisher, category_id) VALUES
('To Kill a Mockingbird', '9780061120084', 1960, 'J.B. Lippincott & Co.', 1),
('A Brief History of Time', '9780553380163', 1988, 'Bantam Books', 3),
('The Great Gatsby', '9780743273565', 1925, 'Charles Scribner\'s Sons', 1),
('The Immortal Life of Henrietta Lacks', '9781400052189', 2010, 'Crown Publishing Group', 5),
('Sapiens: A Brief History of Humankind', '9780062316097', 2011, 'Harper', 4);

CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);
INSERT INTO Authors (first_name, last_name) VALUES
('Harper', 'Lee'),
('Stephen', 'Hawking'),
('F. Scott', 'Fitzgerald'),
('Rebecca', 'Skloot'),
('Yuval Noah', 'Harari');


CREATE TABLE BookAuthors (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE
);

INSERT INTO BookAuthors (book_id, author_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE
);


INSERT INTO Members (first_name, last_name, email, phone) VALUES
('John', 'Doe', 'johndoe@example.com', '123-456-7890'),
('Jane', 'Smith', 'janesmith@example.com', '234-567-8901'),
('Alice', 'Johnson', 'alicejohnson@example.com', '345-678-9012'),
('Bob', 'Brown', 'bobbrown@example.com', '456-789-0123'),
('Charlie', 'Davis', 'charliedavis@example.com', '567-890-1234');


CREATE TABLE Issue (
    Issue_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    Issue_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id) ON DELETE CASCADE
);

INSERT INTO Issue (book_id, member_id, Issue_date, due_date, return_date) VALUES
(1, 1, '2024-05-01', '2024-05-15', '2024-05-14'),
(2, 2, '2024-05-02', '2024-05-16', NULL),
(3, 3, '2024-05-03', '2024-05-17', NULL),
(4, 4, '2024-05-04', '2024-05-18', '2024-05-17'),
(5, 5, '2024-05-05', '2024-05-19', NULL);
