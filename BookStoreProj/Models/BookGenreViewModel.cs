using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace BookStoreProj.Models
{
    public class BookGenreViewModel
    {
        public List<Book> Books;
        public SelectList Genres;
        public string BookGenre { get; set; }
        public string SearchString { get; set; }
    }
}
