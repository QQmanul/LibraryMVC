using LibraryMVC.Domain.Interfaces;
using LibraryMVC.Domain.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace LibraryMVC.Controllers
{
    public class BookContentsController : Controller
    {

        private readonly IBookContentsRepository _contentsRepository;

        public BookContentsController(IBookContentsRepository contentsRepository)
        {
            _contentsRepository = contentsRepository;
        }

        // GET: BooksController/Edit/5
        public async Task<IActionResult> Edit(int id)
        {
            var contentsXML = await _contentsRepository.GetContentsByIdAsync(id);

            if (contentsXML == null) return NotFound();

            return View(new Book { Id = id, ContentsXml = contentsXML });
        }

        // POST: BooksController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit
            (
                int id,
                string contentsXML
            )
        {

            await _contentsRepository.UpdateContentsAsync(id, contentsXML);
            return RedirectToAction("Details", "Books", new { id = id });

        }
    }
}
