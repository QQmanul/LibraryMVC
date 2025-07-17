namespace LibraryMVC.Domain.DTOs
{
    public class PagedResult<T>
    {
        public IEnumerable<T> Items { get; set; } = new List<T>();
        public int TotalCount { get; set; }  // всего записей в бд 
    }
}
