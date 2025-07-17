namespace LibraryMVC.Models
{
    public class BookIndexViewModel
    {
        public IEnumerable<Book> Books { get; set; } = new List<Book>();

        public int PageNumber { get; set; }
        public int TotalPages { get; set; }

        public bool HasPreviousPage => PageNumber > 1;
        public bool HasNextPage => PageNumber < TotalPages;
    }
}
