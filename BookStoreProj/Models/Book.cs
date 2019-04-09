using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace BookStoreProj.Models
{
    public class Book
    {
        public int Id { get; set; }

        [StringLength(6, MinimumLength = 6), Required]
        public string Article { get; set; }

        [StringLength(30), Required]
        public string Author { get; set; }

        [Required]
        public string Title { get; set; }

        [StringLength(20), Required]
        public string Genre { get; set; }

        [Required, ]
        public decimal Price { get; set; }
    }
}
