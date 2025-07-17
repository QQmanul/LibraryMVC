using LibraryMVC.Domain.Interfaces;
using LibraryMVC.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Drawing;

namespace LibraryMVC.Controllers
{
    public class BooksController : Controller
    {
        private readonly IBookRepository _bookRepository;

        public BooksController(IBookRepository bookRepository)
        {
            _bookRepository = bookRepository;
        }

        public async Task<IActionResult> Index([FromQuery] int pageNumber = 1)
        {
            const int pageSize = 25;

            var pagedResult = await _bookRepository.GetAllAsync(pageNumber, pageSize);


            var viewModel = new BookIndexViewModel
            {
                Books = pagedResult.Items,
                PageNumber = pageNumber,
                TotalPages = (int)Math.Ceiling(pagedResult.TotalCount / (double)pageSize)
            };

            return View(viewModel);
        }


        // GET: BooksController/Details/5
        public async Task<IActionResult> Details(int id)
        {
            var book = await _bookRepository.GetByIdAsync(id);

            if (book == null)  return NotFound();

            return View(book);
        }

        // GET: BooksController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: BooksController/Create
        [HttpPost]
        public async Task<IActionResult> Create
            (
                [Bind("Title,Author,YearPublished,Publisher,Genre,Pages,ContentsXml")] 
                Book book
            )
        {
            if (ModelState.IsValid)
            {
                await _bookRepository.AddAsync(book);
                return RedirectToAction(nameof(Index));
            }

            return View(book);
        }

        // GET: BooksController/Edit/5
        public async Task<IActionResult> Edit(int id)
        {
            return await Details(id);
        }

        // POST: BooksController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit
            (
                int id, 
                [Bind("Title,Author,YearPublished,Publisher,Genre,Pages,ContentsXml")]  Book book
            )
        {
            if (ModelState.IsValid)
            {
                book.Id = id;
                await _bookRepository.UpdateAsync(book);
                return RedirectToAction("Details", "Books", new { id = book.Id });
            }

            return View(book);
        }

        // GET: BooksController/Delete/5
        public async Task<IActionResult> Delete(int id)
        {
            return await Details(id);
        }

        // POST: BooksController/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Delete(int id, IFormCollection collection)
        {
            await _bookRepository.DeleteAsync(id);
            return RedirectToAction(nameof(Index));
        }
    }
}
