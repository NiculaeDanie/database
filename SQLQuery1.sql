drop table UserBooks;
drop table AuthorBooks;
drop table BooksGenres;
drop table Authors;
drop table books;
drop table Users;
drop table Genres;
CREATE TABLE Authors(
	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Name NVARCHAR(20) NOT NULL,
	Description NVARCHAR(1000)
);

CREATE TABLE Books(
	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Title NVARCHAR(50) NOT NULL,
	Description NVARCHAR(500),
	ReleaseDate DATETIME2,
	Status NVARCHAR(50) NOT NULL,
	Content VARBINARY(MAX)
);

CREATE TABLE Users(
	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Email NVARCHAR(30) NOT NULL,
	Password NVARCHAR(20) NOT NULL,
	Name NVARCHAR(25) NOT NULL
);

CREATE TABLE UserBooks(
	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	UserId INT NOT NULL FOREIGN KEY REFERENCES Users(ID),
	BookId INT NOT NULL FOREIGN KEY REFERENCES Books(ID)
);

CREATE TABLE AuthorBooks(
	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	AuthorId INT NOT NULL FOREIGN KEY REFERENCES Authors(ID),
	BookId INT NOT NULL FOREIGN KEY REFERENCES Books(ID)
);

CREATE TABLE Genres(
	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Genre NVARCHAR(10) NOT NULL
);

CREATE TABLE BooksGenres(
	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	BookId INT NOT NULL FOREIGN KEY REFERENCES Books(ID),
	GenreId INT NOT NULL FOREIGN KEY REFERENCES Genres(ID)
);

insert into Authors (Name, Description) values ('Jessica Ivanusyev', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue.');
insert into Authors (Name, Description) values ('Sonnnie Balentyne', 'Donec dapibus. Duis at velit eu est congue elementum.');
insert into Authors (Name, Description) values ('Marika Whitwell', 'Nullam varius. Nulla facilisi.');
insert into Authors (Name, Description) values ('Nicky Channer', 'Pellentesque viverra pede ac diam.');
insert into Authors (Name, Description) values ('Ber Gurko', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into Authors (Name, Description) values ('Ambrosi Keely', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.');
insert into Authors (Name, Description) values ('Rayshell Bestiman', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
insert into Authors (Name, Description) values ('Angel Madden', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.');
insert into Authors (Name, Description) values ('Devland Lasham', 'Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.');
insert into Authors (Name, Description) values ('Drona Landers', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.');

insert into Books (Title, Description, ReleaseDate, Status) values ('No Highway in the Sky', 'Mauris lacinia sapien quis libero.', '2/15/2021', 'tangible');
insert into Books (Title, Description, ReleaseDate, Status) values ('Devil Is a Woman, The', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', '2/4/2022', 'bifurcated');
insert into Books (Title, Description, ReleaseDate, Status) values ('Room 237', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '4/30/2022', 'Implemented');
insert into Books (Title, Description, ReleaseDate, Status) values ('Sand Pebbles, The', 'Morbi non quam nec dui luctus rutrum. Nulla tellus.', '6/6/2020', 'archive');
insert into Books (Title, Description, ReleaseDate, Status) values ('Satan''s Little Helper', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '5/22/2020', 'projection');
insert into Books (Title, Description, ReleaseDate, Status) values ('Clash of the Titans', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', '5/25/2021', 'circuit');
insert into Books (Title, Description, ReleaseDate, Status) values ('Double Solitaire', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '12/2/2021', 'actuating');
insert into Books (Title, Description, ReleaseDate, Status) values ('Amy', 'Nulla ut erat id mauris vulputate elementum.', '11/28/2021', 'monitoring');
insert into Books (Title, Description, ReleaseDate, Status) values ('Carnival in Flanders (La kermesse héroïque)', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', '7/3/2020', 'local area network');
insert into Books (Title, Description, ReleaseDate, Status) values ('I Was Monty''s Double', 'In quis justo.', '7/16/2021', 'Innovative');

insert into Users (Email, Password, Name) values ('bdoyland0@free.fr', 'OLxCddJW', 'Brana Doyland');
insert into Users (Email, Password, Name) values ('hepinoy1@e-recht24.de', '8DsNQE8', 'Halette Epinoy');
insert into Users (Email, Password, Name) values ('logborne2@mediafire.com', 'Q5QiT82H9', 'Lemuel Ogborne');
insert into Users (Email, Password, Name) values ('cdewbury3@angelfire.com', 'G2wdlJaEZAV', 'Chevalier Dewbury');
insert into Users (Email, Password, Name) values ('akenworth4@wikipedia.org', 'UiY7Lb8', 'Aldric Kenworth');
insert into Users (Email, Password, Name) values ('lmonard5@lulu.com', 'eqVWvo0F1fQ9', 'Leonanie Monard');
insert into Users (Email, Password, Name) values ('cpaddell6@amazon.com', 'mkKyzFF1oDD', 'Cristina Paddell');
insert into Users (Email, Password, Name) values ('mviant7@posterous.com', 'QW4N8Krv42M5', 'Mose Viant');
insert into Users (Email, Password, Name) values ('squinnet8@washington.edu', 'tqD1GXRAng1', 'Steffen Quinnet');
insert into Users (Email, Password, Name) values ('easbury9@google.com.br', 'UpbmlG', 'Elene Asbury');

insert into Genres (Genre) values ('Drama');
insert into Genres (Genre) values ('Comedy');
insert into Genres (Genre) values ('Romance');
insert into Genres (Genre) values ('Thriller');
insert into Genres (Genre) values ('Police');
insert into Genres (Genre) values ('Horror');
insert into Genres (Genre) values ('Comedy');
insert into Genres (Genre) values ('Romance');
insert into Genres (Genre) values ('Comedy');
insert into Genres (Genre) values ('Action');

insert into UserBooks (BookId, UserId) values (4, 6);
insert into UserBooks (BookId, UserId) values (4, 1);
insert into UserBooks (BookId, UserId) values (9, 10);
insert into UserBooks (BookId, UserId) values (10, 1);
insert into UserBooks (BookId, UserId) values (9, 7);
insert into UserBooks (BookId, UserId) values (1, 1);
insert into UserBooks (BookId, UserId) values (4, 8);
insert into UserBooks (BookId, UserId) values (3, 9);
insert into UserBooks (BookId, UserId) values (5, 1);
insert into UserBooks (BookId, UserId) values (1, 8);
insert into UserBooks (BookId, UserId) values (10, 9);
insert into UserBooks (BookId, UserId) values (3, 9);
insert into UserBooks (BookId, UserId) values (8, 2);
insert into UserBooks (BookId, UserId) values (1, 7);
insert into UserBooks (BookId, UserId) values (2, 2);
insert into UserBooks (BookId, UserId) values (7, 6);
insert into UserBooks (BookId, UserId) values (6, 2);
insert into UserBooks (BookId, UserId) values (10, 1);
insert into UserBooks (BookId, UserId) values (3, 7);
insert into UserBooks (BookId, UserId) values (10, 9);
insert into UserBooks (BookId, UserId) values (10, 6);
insert into UserBooks (BookId, UserId) values (6, 3);
insert into UserBooks (BookId, UserId) values (7, 9);
insert into UserBooks (BookId, UserId) values (2, 8);
insert into UserBooks (BookId, UserId) values (2, 6);
insert into UserBooks (BookId, UserId) values (7, 10);
insert into UserBooks (BookId, UserId) values (2, 5);
insert into UserBooks (BookId, UserId) values (1, 6);
insert into UserBooks (BookId, UserId) values (1, 1);
insert into UserBooks (BookId, UserId) values (2, 7);
insert into UserBooks (BookId, UserId) values (7, 2);
insert into UserBooks (BookId, UserId) values (6, 5);
insert into UserBooks (BookId, UserId) values (4, 8);
insert into UserBooks (BookId, UserId) values (7, 8);
insert into UserBooks (BookId, UserId) values (7, 9);
insert into UserBooks (BookId, UserId) values (3, 10);
insert into UserBooks (BookId, UserId) values (8, 8);
insert into UserBooks (BookId, UserId) values (2, 2);
insert into UserBooks (BookId, UserId) values (10, 5);
insert into UserBooks (BookId, UserId) values (7, 6);
insert into UserBooks (BookId, UserId) values (9, 9);
insert into UserBooks (BookId, UserId) values (9, 6);
insert into UserBooks (BookId, UserId) values (7, 3);
insert into UserBooks (BookId, UserId) values (8, 7);
insert into UserBooks (BookId, UserId) values (9, 10);
insert into UserBooks (BookId, UserId) values (1, 9);
insert into UserBooks (BookId, UserId) values (2, 6);
insert into UserBooks (BookId, UserId) values (10, 2);
insert into UserBooks (BookId, UserId) values (1, 10);
insert into UserBooks (BookId, UserId) values (9, 10);

insert into AuthorBooks (BookId, AuthorId) values (3, 6);
insert into AuthorBooks (BookId, AuthorId) values (3, 1);
insert into AuthorBooks (BookId, AuthorId) values (5, 6);
insert into AuthorBooks (BookId, AuthorId) values (1, 4);
insert into AuthorBooks (BookId, AuthorId) values (3, 1);
insert into AuthorBooks (BookId, AuthorId) values (3, 8);
insert into AuthorBooks (BookId, AuthorId) values (9, 7);
insert into AuthorBooks (BookId, AuthorId) values (8, 8);
insert into AuthorBooks (BookId, AuthorId) values (8, 2);
insert into AuthorBooks (BookId, AuthorId) values (8, 2);
insert into AuthorBooks (BookId, AuthorId) values (6, 2);
insert into AuthorBooks (BookId, AuthorId) values (4, 4);
insert into AuthorBooks (BookId, AuthorId) values (5, 3);
insert into AuthorBooks (BookId, AuthorId) values (1, 1);
insert into AuthorBooks (BookId, AuthorId) values (8, 8);
insert into AuthorBooks (BookId, AuthorId) values (8, 1);
insert into AuthorBooks (BookId, AuthorId) values (9, 7);
insert into AuthorBooks (BookId, AuthorId) values (7, 7);
insert into AuthorBooks (BookId, AuthorId) values (5, 9);
insert into AuthorBooks (BookId, AuthorId) values (5, 10);
insert into AuthorBooks (BookId, AuthorId) values (3, 8);
insert into AuthorBooks (BookId, AuthorId) values (5, 1);
insert into AuthorBooks (BookId, AuthorId) values (5, 6);
insert into AuthorBooks (BookId, AuthorId) values (9, 3);
insert into AuthorBooks (BookId, AuthorId) values (9, 5);
insert into AuthorBooks (BookId, AuthorId) values (4, 3);
insert into AuthorBooks (BookId, AuthorId) values (5, 10);
insert into AuthorBooks (BookId, AuthorId) values (3, 7);
insert into AuthorBooks (BookId, AuthorId) values (2, 5);
insert into AuthorBooks (BookId, AuthorId) values (8, 8);
insert into AuthorBooks (BookId, AuthorId) values (3, 3);
insert into AuthorBooks (BookId, AuthorId) values (5, 4);
insert into AuthorBooks (BookId, AuthorId) values (8, 2);
insert into AuthorBooks (BookId, AuthorId) values (9, 5);
insert into AuthorBooks (BookId, AuthorId) values (3, 7);
insert into AuthorBooks (BookId, AuthorId) values (7, 3);
insert into AuthorBooks (BookId, AuthorId) values (4, 3);
insert into AuthorBooks (BookId, AuthorId) values (9, 6);
insert into AuthorBooks (BookId, AuthorId) values (9, 10);
insert into AuthorBooks (BookId, AuthorId) values (2, 4);
insert into AuthorBooks (BookId, AuthorId) values (1, 1);
insert into AuthorBooks (BookId, AuthorId) values (1, 9);
insert into AuthorBooks (BookId, AuthorId) values (5, 1);
insert into AuthorBooks (BookId, AuthorId) values (2, 4);
insert into AuthorBooks (BookId, AuthorId) values (8, 2);
insert into AuthorBooks (BookId, AuthorId) values (5, 3);
insert into AuthorBooks (BookId, AuthorId) values (8, 1);
insert into AuthorBooks (BookId, AuthorId) values (9, 2);
insert into AuthorBooks (BookId, AuthorId) values (8, 3);
insert into AuthorBooks (BookId, AuthorId) values (5, 2);

insert into BooksGenres (BookId, GenreId) values (5, 3);
insert into BooksGenres (BookId, GenreId) values (4, 9);
insert into BooksGenres (BookId, GenreId) values (4, 4);
insert into BooksGenres (BookId, GenreId) values (10, 6);
insert into BooksGenres (BookId, GenreId) values (5, 2);
insert into BooksGenres (BookId, GenreId) values (5, 9);
insert into BooksGenres (BookId, GenreId) values (2, 2);
insert into BooksGenres (BookId, GenreId) values (9, 3);
insert into BooksGenres (BookId, GenreId) values (1, 3);
insert into BooksGenres (BookId, GenreId) values (3, 5);
insert into BooksGenres (BookId, GenreId) values (3, 5);
insert into BooksGenres (BookId, GenreId) values (10, 9);
insert into BooksGenres (BookId, GenreId) values (9, 3);
insert into BooksGenres (BookId, GenreId) values (6, 9);
insert into BooksGenres (BookId, GenreId) values (3, 3);
insert into BooksGenres (BookId, GenreId) values (9, 6);
insert into BooksGenres (BookId, GenreId) values (3, 10);
insert into BooksGenres (BookId, GenreId) values (6, 6);
insert into BooksGenres (BookId, GenreId) values (3, 1);
insert into BooksGenres (BookId, GenreId) values (1, 10);
insert into BooksGenres (BookId, GenreId) values (4, 10);
insert into BooksGenres (BookId, GenreId) values (6, 9);
insert into BooksGenres (BookId, GenreId) values (6, 6);
insert into BooksGenres (BookId, GenreId) values (1, 4);
insert into BooksGenres (BookId, GenreId) values (8, 3);
insert into BooksGenres (BookId, GenreId) values (4, 4);
insert into BooksGenres (BookId, GenreId) values (5, 1);
insert into BooksGenres (BookId, GenreId) values (4, 3);
insert into BooksGenres (BookId, GenreId) values (7, 5);
insert into BooksGenres (BookId, GenreId) values (1, 3);
insert into BooksGenres (BookId, GenreId) values (7, 4);
insert into BooksGenres (BookId, GenreId) values (8, 2);
insert into BooksGenres (BookId, GenreId) values (10, 1);
insert into BooksGenres (BookId, GenreId) values (5, 1);
insert into BooksGenres (BookId, GenreId) values (6, 3);
insert into BooksGenres (BookId, GenreId) values (6, 4);
insert into BooksGenres (BookId, GenreId) values (6, 6);
insert into BooksGenres (BookId, GenreId) values (4, 1);
insert into BooksGenres (BookId, GenreId) values (5, 8);
insert into BooksGenres (BookId, GenreId) values (6, 5);
insert into BooksGenres (BookId, GenreId) values (8, 4);
insert into BooksGenres (BookId, GenreId) values (1, 9);
insert into BooksGenres (BookId, GenreId) values (9, 6);
insert into BooksGenres (BookId, GenreId) values (9, 10);
insert into BooksGenres (BookId, GenreId) values (10, 6);
insert into BooksGenres (BookId, GenreId) values (10, 4);
insert into BooksGenres (BookId, GenreId) values (9, 3);
insert into BooksGenres (BookId, GenreId) values (10, 3);
insert into BooksGenres (BookId, GenreId) values (2, 8);
insert into BooksGenres (BookId, GenreId) values (3, 2);

SELECT  *
  FROM books
LEFT OUTER JOIN AuthorBooks
  ON books.ID = AuthorBooks.BookId
LEFT OUTER JOIN Authors
  ON AuthorBooks.AuthorId = Authors.ID
where books.ReleaseDate > '7/3/2020';

SELECT  *
  FROM books
LEFT OUTER JOIN BooksGenres
  ON books.ID = BooksGenres.BookId
LEFT OUTER JOIN Genres
  ON BooksGenres.GenreId = Genres.ID
where Genres.Genre Like 'Horror';

SELECT  Users.name, count(bookid)
  FROM Users
LEFT OUTER JOIN UserBooks
  ON Users.ID = UserBooks.BookId
LEFT OUTER JOIN Books
  ON UserBooks.BookId = Books.ID
group by users.name
having count(BookId) > 3 
order by count(BookId);

SELECT  Genres.Genre, count(Genres.ID)
  FROM Users
LEFT OUTER JOIN UserBooks
  ON Users.ID = UserBooks.BookId
LEFT OUTER JOIN Books
  ON UserBooks.BookId = Books.ID
LEFT OUTER JOIN BooksGenres
 ON BooksGenres.BookId = Books.ID
LEFT OUTER JOIN Genres
 ON Genres.ID = BooksGenres.GenreId
  where users.Name Like 'Elene Asbury'
 group by genres.genre;

 SELECT  Users.name
  FROM Users
LEFT OUTER JOIN UserBooks
  ON Users.ID = UserBooks.BookId
LEFT OUTER JOIN Books
  ON UserBooks.BookId = Books.ID
  WHERE Book.Title Like 'Room 237';



BEGIN TRANSACTION
BEGIN TRY 
		USE [test]		
			UPDATE [dbo].[Authors]
				SET [Name] = 'test'
				WHERE [ID] = 1;
			USE [test]		
			UPDATE [dbo].[Books]
				SET [Title] = 'test'
				WHERE [ID] = 2;
				USE [test]		
			UPDATE [dbo].[Genres]
				SET [Genre] = 'test'
				WHERE [ID] = 3;
				USE [test]
			insert into BooksGenres (BookId, GenreId) values (6000, 6);
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
	select * from authors;
END CATCH
	
