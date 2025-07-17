CREATE DATABASE MyLibraryDB;
GO

USE MyLibraryDB;
GO  

CREATE TABLE Books (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(200) NOT NULL, 
    Author NVARCHAR(200) NOT NULL, -- �������� �������� 3 ���������� �����, ����� ������� �� ��������� ��������� ��.
    YearPublished INT,
    Publisher NVARCHAR(200),
    Genre NVARCHAR(100),
    Pages INT,
    ContentsXml XML
);