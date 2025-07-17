using LibraryMVC.Domain.DTOs;

namespace LibraryMVC.Domain.Interfaces
{
    public interface IBookRepository
    {
        Task<Book?> GetByIdAsync(int id);
        Task<PagedResult<Book>> GetAllAsync(int pageNumber, int pageSize);
        Task AddAsync(Book book);
        Task UpdateAsync(Book book);
        Task DeleteAsync(int id);
    }
}
