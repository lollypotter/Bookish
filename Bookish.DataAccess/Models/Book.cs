using System;
using System.Collections.Generic;

namespace Bookish.DataAccess
{
    public class Book
    {
        public int Id { get; set; }

        public string Title { get; set; }

        public string Author { get; set; }

        public int ISBN13 { get; set; }

        public int ISBN10 { get; set; }

        public string Description { get; set; }

        //public string CoverImageUrl {get; set; }
        
    }
    
}