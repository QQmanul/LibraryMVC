USE MyLibraryDB;
GO  


CREATE OR ALTER PROCEDURE AddBook 
    @Title NVARCHAR(200),
    @Author NVARCHAR(200),
    @YearPublished INT = NULL,
    @Publisher NVARCHAR(200) = 'не указан',
    @Genre NVARCHAR(100)= 'не указан',
    @Pages INT = NULL,
    @ContentsXml XML = NULL
AS
BEGIN
    INSERT INTO Books (Title, Author, YearPublished, Publisher, Genre, Pages, ContentsXml)
    VALUES (@Title, @Author, @YearPublished, @Publisher, @Genre, @Pages, @ContentsXml);
END;
GO


CREATE OR ALTER PROCEDURE UpdateBook
    @Id INT,
    @Title NVARCHAR(200),
    @Author NVARCHAR(200),
    @YearPublished INT = NULL,
    @Publisher NVARCHAR(200) = 'не указан',
    @Genre NVARCHAR(100) = 'не указан',
    @Pages INT = NULL,
    @ContentsXml XML = NULL
AS
BEGIN
    UPDATE Books
    SET
        Title = @Title,
        Author = @Author,
        YearPublished = @YearPublished,
        Publisher = @Publisher,
        Genre = @Genre,
        Pages = @Pages
    WHERE Id = @Id;
END;
GO

CREATE OR ALTER PROCEDURE UpdateBookContents
    @Id INT,
    @ContentsXml XML = NULL
AS
BEGIN
    UPDATE Books
    SET
        ContentsXml = @ContentsXml
    WHERE Id = @Id;
END;
GO

CREATE OR ALTER PROCEDURE DeleteBook
    @Id INT
AS
BEGIN
    DELETE FROM Books
    WHERE Id = @Id;
END;
GO


CREATE OR ALTER PROCEDURE GetBooks
    @PageNumber INT = 1,
    @PageSize INT = 10
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        Id,
        Title,
        Author,
        YearPublished,
        Publisher,
        Genre,
        Pages
    FROM Books
    ORDER BY Id
    OFFSET (@PageNumber - 1) * @PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY;

    SELECT COUNT(*) AS TotalCount
    FROM Books;
END;
GO


CREATE OR ALTER PROCEDURE GetBookById
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        Id,
        Title,
        Author,
        YearPublished,
        Publisher,
        Genre,
        Pages,
        ContentsXml
    FROM Books
    WHERE Id = @Id;
END;
GO

CREATE OR ALTER PROCEDURE GetContentsByIdAsync
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        ContentsXml
    FROM Books
    WHERE Id = @Id;
END;
GO
