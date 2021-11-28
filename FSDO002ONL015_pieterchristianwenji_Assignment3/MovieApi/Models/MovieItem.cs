using System;

namespace MovieApi.Models
{
    public class MovieItem
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Genre { get; set; }
        public TimeSpan Duration { get; set; }
        public DateTime ReleaseDate { get; set; }
    }
}