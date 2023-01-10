using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace SuperHerores.Server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SuperheroController : ControllerBase
    {

        private readonly DataContext _context;

        public SuperheroController(DataContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetSuperheroesList()
        {
            return Ok(await _context.Superheroes
                .Include(sh => sh.Comic)
                .ToListAsync<Superhero>());
        }

        [HttpGet("comics")]
        public async Task<IActionResult> GetComics()
        {
            return Ok(await _context.Comics.ToListAsync<Comic>());
        }

        // or HTTPGet Route("{id}")
        [HttpGet("{id}")]
        public async Task<IActionResult> GetSingleSuperhero(int id)
        {
            var superheroes = await _context.Superheroes
                .Include(sh => sh.Comic)
                .ToListAsync<Superhero>();
            Superhero? result = superheroes.FirstOrDefault(e => e.Id == id);
            if (result == null)
            {
                return NotFound("Sorry, no hero is found.");
            }
            return Ok(result);
        }

        [HttpPost]
        public async Task<IActionResult> CreateSuperHero(Superhero hero)
        {
            _context.Superheroes.Add(hero);
            await _context.SaveChangesAsync();
            return Ok(await GetSuperheroesAsync());
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteHero(int id)
        {
            var superhero = (await GetSuperheroesAsync())
                .FirstOrDefault(e => e.Id == id);
            if (superhero == null)
            {
                return NotFound("There's no hero to delete");
            }

            _context.Superheroes.Remove(superhero);
            await _context.SaveChangesAsync();
            return Ok(await GetSuperheroesAsync());
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateHero(Superhero newModel, int id)
        {
            var oldModel = (await GetSuperheroesAsync())
                .FirstOrDefault(e => e.Id == id);
            if (oldModel == null)
            {
                return NotFound("There's no hero to update");
            }

            oldModel.FirstName = newModel.FirstName;
            oldModel.LastName = newModel.LastName;
            oldModel.HeroName = newModel.HeroName;
            oldModel.ComicId = oldModel.ComicId;

            await _context.SaveChangesAsync();
            return Ok(await GetSuperheroesAsync());
        }

        private async Task<List<Superhero>> GetSuperheroesAsync()
        {
            return await _context.Superheroes.ToListAsync();
        }
    }
}