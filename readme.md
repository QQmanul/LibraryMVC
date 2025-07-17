
# Домашняя библиотека

Веб-приложение на ASP.NET MVC для управления книгами.

## Возможности:

-   Список и карточка книги
    
-   Добавление, редактирование, удаление книг
    
-   Хранимые процедуры для всех операций
    
-   Оглавление книги хранится в формате XML
    
-   HTML-редактор для редактирования оглавления
    

## Технологии:

-   MS SQL Server Express
    
-   ASP.NET MVC + WebForms
    
-   HTML Editor 
    
-   Visual Studio
    

## Структура таблицы

```
CREATE TABLE Books (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(200) NOT NULL, 
    Author NVARCHAR(200) NOT NULL, -- нарушает принципы 3 нормальной формы, решил излишне не усложнять структуру бд.
    YearPublished INT,
    Publisher NVARCHAR(200),
    Genre NVARCHAR(100),
    Pages INT,
    ContentsXml XML
)
```