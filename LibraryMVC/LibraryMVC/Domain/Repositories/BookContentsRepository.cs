using LibraryMVC.Domain.Interfaces;
using Microsoft.Data.SqlClient;
using System.Data;

namespace LibraryMVC.Domain.Repositories
{
    public class BookContentsRepository : IBookContentsRepository
    {
        private readonly string _connectionString;

        public BookContentsRepository(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("MyLibraryDBConnection")
                ?? throw new Exception("Can't connect to DB");
        }

        private SqlConnection CreateConnection() => new SqlConnection(_connectionString);


        public async Task<string?> GetContentsByIdAsync(int id)
        {
            using var connection = CreateConnection();
            using var command = new SqlCommand("GetContentsByIdAsync", connection)
            {
                CommandType = CommandType.StoredProcedure
            };

            command.Parameters.AddWithValue("@Id", id);

            await connection.OpenAsync();
            using var reader = await command.ExecuteReaderAsync();

            if (await reader.ReadAsync())
                return reader.GetString(reader.GetOrdinal("ContentsXml"));

            return null;
        }

        public async Task UpdateContentsAsync(int id, string contents)
        {
            using var connection = CreateConnection();
            using var command = new SqlCommand("UpdateBookContents", connection)
            {
                CommandType = CommandType.StoredProcedure
            };

            command.Parameters.AddWithValue("@Id", id);
            command.Parameters.AddWithValue("@ContentsXml", contents);

            await connection.OpenAsync();
            await command.ExecuteNonQueryAsync();
        }
    }


}
