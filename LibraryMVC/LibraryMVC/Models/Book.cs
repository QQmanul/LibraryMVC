using System.ComponentModel.DataAnnotations;
using System.Xml;


public class Book
{
    public int Id { get; set; }

    [Required(ErrorMessage = "Название книги обязательно для заполнения")]
    [Display(Name = "Название")]
    public string Title { get; set; } = "";

    [Required(ErrorMessage = "Имя автора обязательно для заполнения")]
    [Display(Name = "Автор")]
    public string Author { get; set; } = "";

    [Display(Name = "Год публикации")]
    public int? YearPublished { get; set; }

    [Display(Name = "Издательство")]
    public string? Publisher { get; set; }

    [Display(Name = "Жанр")]
    public string? Genre { get; set; }

    [Display(Name = "Кол-во страниц")]
    public int? Pages { get; set; }

    [Display(Name = "Оглавление (XML)")]
    public string? ContentsXml { get; set; }
}