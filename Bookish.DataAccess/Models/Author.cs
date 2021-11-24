namespace Bookish.DataAccess.Models
{
    public class Author
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Bio { get; set; }
        
        public string DateOfBirth { get; set; }
        
        public string ContactInfo { get; set; }
    }
}