-- CREATE DATABASE LibraryDb

-- CREATE TABLE Autors(
--     Id INT PRIMARY KEY IDENTITY,
--     Fullname NVARCHAR (50) NOT NULL,
--     Age INT NOT NULL
-- )

-- CREATE TABLE Books(
--     Id INT PRIMARY KEY IDENTITY,
--     Name NVARCHAR (50) NOT NULL,
--     PRICE DECIMAL NOT NULL,
--     AutorId INT REFERENCES Autors(Id)
-- )

-- CREATE TABLE Genres(
--     Id  INT PRIMARY KEY IDENTITY,
--     Name NVARCHAR (50) NOT NULL
-- )

-- CREATE TABLE BookGenres(
--     Id INT PRIMARY KEY IDENTITY,
--     BookId INT REFERENCES Books(Id),
--     GenreId INT REFERENCES Genres(Id)
-- )

-- CREATE TABLE AutorGenres(
--     Id INT PRIMARY KEY IDENTITY,
--     AutorId INT REFERENCES Autors(Id),
--     GenreId INT REFERENCES Genres(Id)
-- )

-- CREATE TABLE Customers(
--     Id INT PRIMARY KEY IDENTITY,
--     Fullname NVARCHAR (50) NOT NULL,
--     Age INT NOT NULL
-- )

-- CREATE TABLE Orders(
--     Id INT PRIMARY KEY IDENTITY,
--     CustomerId INT REFERENCES Customers(Id),
--     BookId INT REFERENCES Books(Id),
--     DateOut DATETIME DEFAULT GETDATE(),
--     DateReturn DATETIME DEFAULT GETDATE(),
-- )

-- INSERT INTO Autors
-- VALUES ('Pushkin Alexander', 38),
--         ('Mikhail Bulgakov', 49),
--         ('Fyodor Tyutchev', 70)

-- INSERT INTO Books
-- VALUES ('War and Piece', 22.50, 1),
--         ('Art of War', 13.40, 2),
--         ('Enn Perry', 36, 3)

-- INSERT INTO Genres
-- VALUES ('Drama'),
--         ('Comedy'),
--         ('Detective'),
--         ('Romance'),
--         ('Science')

-- INSERT INTO Customers
-- VALUES ('Aydin Yusubov', 19),
--         ('Samir Yusifov', 25),
--         ('Islam Abdullayev', 20),
--         ('Orxan Orucov', 40),
--         ('Kamran Ismayilov', 36)

SELECT b.Id, Name 'Book Name', PRICE, Fullname 'Autor Name' FROM Books b
JOIN Autors a
ON b.AutorId = a.Id


