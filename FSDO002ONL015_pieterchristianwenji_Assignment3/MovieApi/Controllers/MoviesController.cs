using Microsoft.AspNetCore.Mvc;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Microsoft.AspNetCore.WebUtilities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using MovieApi.Data;
using MovieApi.Models;

namespace MovieApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MoviesController : ControllerBase
    {
        private readonly ApiDbContext _context;

        public MoviesController(ApiDbContext context)
        {
            _context = context;
        }

        // GET: api/movies
        [HttpGet]
        public async Task<IActionResult> GetMovies()
        {
            var items = await _context.Movie.ToListAsync();
            return Ok(items);
        }

        // GET: api/movies/{id}
        [HttpGet("{id}")]
        public async Task<IActionResult> GetMovie(int id)
        {
            var item = await _context.Movie.FirstOrDefaultAsync(x => x.Id == id);

            if (item == null)
                return NotFound();

            return Ok(item);
        }

        // POST: api/movies
        [HttpPost]
        public async Task<IActionResult> PostMovie(MovieItem movie)
        {
            if (!ModelState.IsValid) return new JsonResult("Something Went Wrong") { StatusCode = 500 };
            await _context.Movie.AddAsync(movie);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetMovie", new { movie.Id }, movie);
        }

        // PUT: api/movies/{id}
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateMovie(int id, MovieItem movie)
        {
            if (id != movie.Id)
                return BadRequest();

            var exsistMovie = await _context.Movie.FirstOrDefaultAsync(x => x.Id == id);

            if (exsistMovie == null)
                return NotFound();

            exsistMovie.Name = movie.Name;
            exsistMovie.Duration = movie.Duration;
            exsistMovie.Genre = movie.Genre;
            exsistMovie.ReleaseDate = movie.ReleaseDate;

            await _context.SaveChangesAsync();
            return NoContent();
        }

        // DELETE: api/movies/{id}
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteMovie(int id)
        {
            var exsistMovie = await _context.Movie.FirstOrDefaultAsync(x => x.Id == id);
            if (exsistMovie == null)
                return NotFound();
            _context.Movie.Remove(exsistMovie);
            await _context.SaveChangesAsync();

            return Ok(exsistMovie);
        }
    }
}