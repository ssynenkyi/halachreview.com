using System;

namespace BlogEngine.Core
{
    public class PostVerse
    {
        public string BlogID { get; set; }
        public string PostID { get; set; }
        public int Number { get; set; }
        public DateTime DateCreated { get; set; }
        public bool IsDeleted { get; set; }
    }
}
