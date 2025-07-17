using LibraryMVC.Domain.DTOs;
using LibraryMVC.Domain.Interfaces;
using Microsoft.Data.SqlClient;
using System.Data;

namespace LibraryMVC.Domain.Repositories
{
    public class BookRepository : IBookRepository
    {
        private readonly string _connectionString;

        public BookRepository(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("MyLibraryDBConnection") 
                ?? throw new Exception("Can't connect to DB");
        }

        private SqlConnection CreateConnection() => new SqlConnection(_connectionString);

        public async Task<PagedResult<Book>> GetAllAsync(int pageNumber, int pageSize)
        {
            var books = new List<Book>();
            int totalCount = 0;

            using var connection = CreateConnection();
            using var command = new SqlCommand("GetBooks", connection)
            {
                CommandType = CommandType.StoredProcedure
            };

            command.Parameters.AddWithValue("@PageNumber", pageNumber);
            command.Parameters.AddWithValue("@PageSize", pageSize);

            await connection.OpenAsync();
            using var reader = await command.ExecuteReaderAsync();

            while (await reader.ReadAsync())
            {
                books.Add(MapBookFromReader(reader, false)); 
            }

            if (await reader.NextResultAsync())
            {
                if (await reader.ReadAsync())
                {
                    totalCount = reader.GetInt32(0); 
                }
            }

            return new PagedResult<Book> { Items = books, TotalCount = totalCount };
        }

        public async Task<Book?> GetByIdAsync(int id)
        {
            using var connection = CreateConnection();
            using var command = new SqlCommand("GetBookById", connection)
            {
                CommandType = CommandType.StoredProcedure
            };

            command.Parameters.AddWithValue("@Id", id);

            await connection.OpenAsync();
            using var reader = await command.ExecuteReaderAsync();

            if (await reader.ReadAsync())
                return MapBookFromReader(reader, true);

            return null;
        }

        public async Task AddAsync(Book book)
        {
            using var connection = CreateConnection();
            using var command = new SqlCommand("AddBook", connection)
            {
                CommandType = CommandType.StoredProcedure
            };

            AddBookParameters(command, book);

            await connection.OpenAsync();
            await command.ExecuteNonQueryAsync();
        }

        public async Task DeleteAsync(int id)
        {
            using var connection = CreateConnection();
            using var command = new SqlCommand("DeleteBook", connection)
            {
                CommandType = CommandType.StoredProcedure
            };

            command.Parameters.AddWithValue("@Id", id);

            await connection.OpenAsync();
            await command.ExecuteNonQueryAsync();
        }

        public async Task UpdateAsync(Book book)
        {
            using var connection = CreateConnection();
            using var command = new SqlCommand("UpdateBook", connection)
            {
                CommandType = CommandType.StoredProcedure
            };

            command.Parameters.AddWithValue("@Id", book.Id);
            AddBookParameters(command, book);

            await connection.OpenAsync();
            await command.ExecuteNonQueryAsync();
        }

        private void AddBookParameters(SqlCommand command, Book book)
        {
            command.Parameters.AddWithValue("@Title", book.Title);
            command.Parameters.AddWithValue("@Author", book.Author);

            command.Parameters.AddWithValue("@YearPublished", (object)book.YearPublished ?? DBNull.Value);
            command.Parameters.AddWithValue("@Publisher", (object)book.Publisher ?? DBNull.Value);
            command.Parameters.AddWithValue("@Genre", (object)book.Genre ?? DBNull.Value);
            command.Parameters.AddWithValue("@Pages", (object)book.Pages ?? DBNull.Value);
            command.Parameters.AddWithValue("@ContentsXml", (object)book.ContentsXml ?? DBNull.Value);
        }

        private Book MapBookFromReader(SqlDataReader reader, bool includeXml)
        {
            var book = new Book
            {
                Id = reader.GetInt32(reader.GetOrdinal("Id")),
                Title = reader.GetString(reader.GetOrdinal("Title")),
                Author = reader.GetString(reader.GetOrdinal("Author")),
                YearPublished = !reader.IsDBNull(reader.GetOrdinal("YearPublished")) ? reader.GetInt32(reader.GetOrdinal("YearPublished")) : null,
                Publisher = !reader.IsDBNull(reader.GetOrdinal("Publisher")) ? reader.GetString(reader.GetOrdinal("Publisher")) : null,
                Genre = !reader.IsDBNull(reader.GetOrdinal("Genre")) ? reader.GetString(reader.GetOrdinal("Genre")) : null,
                Pages = !reader.IsDBNull(reader.GetOrdinal("Pages")) ? reader.GetInt32(reader.GetOrdinal("Pages")) : null
            };

            if (includeXml && !reader.IsDBNull(reader.GetOrdinal("ContentsXml")))
            {
                book.ContentsXml = reader.GetString(reader.GetOrdinal("ContentsXml"));
            }

            return book;
        }
    }
}
