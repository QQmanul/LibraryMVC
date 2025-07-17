namespace LibraryMVC.Domain.Interfaces
{
    public interface IBookContentsRepository
    {
        Task<string?> GetContentsByIdAsync(int id);
        Task UpdateContentsAsync(int id, string contents);
    }
}
