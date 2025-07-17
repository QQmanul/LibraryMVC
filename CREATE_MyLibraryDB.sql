CREATE DATABASE MyLibraryDB;
GO

USE MyLibraryDB;
GO  

CREATE TABLE Books (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(200) NOT NULL, 
    Author NVARCHAR(200) NOT NULL, -- нарушает принципы 3 нормальной формы, решил излишне не усложнять структуру бд.
    YearPublished INT,
    Publisher NVARCHAR(200),
    Genre NVARCHAR(100),
    Pages INT,
    ContentsXml XML
);