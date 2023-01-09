using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using SuperHerores.Shared;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace SuperHerores.Server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SuperheroController : ControllerBase
    {
        public static List<Comic> comics = new List<Comic> {
            new Comic { Id=1, Name="Marvel"},
            new Comic { Id=2, Name="DC"},
        };

        public static List<Superhero> heroes = new List<Superhero> {
            new Superhero {
                Id=1,
                FirstName="Peter",
                LastName="Parker",
                HeroName="Spiderman",
                Comic=comics[0],
                ComicId=1,
            },
            new Superhero {
                Id=2,
                FirstName="Bruce",
                LastName="Wayne",
                HeroName="Batman",
                Comic=comics[1],
                ComicId=2,
            },
        };

        [HttpGet]
        public async Task<IActionResult> GetSuperheroesList()
        {
            return Ok(heroes);
        }

        // or HTTPGet Route("{id}")
        [HttpGet("{id}")]
        public async Task<IActionResult> GetSingleSuperhero(int id)
        {
            Superhero? result = heroes.Find(hero => hero.Id == id);
            if (result == null)
            {
                return NotFound("Sorry, no hero is found.");
            }
            return Ok(result);
        }
    }
}