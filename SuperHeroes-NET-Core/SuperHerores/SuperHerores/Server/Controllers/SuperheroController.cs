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
        private static List<Comic> _Comics = new List<Comic> {
            new Comic { Id=1, Name="Marvel"},
            new Comic { Id=2, Name="DC"},
        };

        private static List<Superhero> _Heroes = new List<Superhero> {
            new Superhero {
                Id=1,
                FirstName="Peter",
                LastName="Parker",
                HeroName="Spiderman",
                Comic=_Comics[0],
                ComicId=1,
            },
            new Superhero {
                Id=2,
                FirstName="Bruce",
                LastName="Wayne",
                HeroName="Batman",
                Comic=_Comics[1],
                ComicId=2,
            },
        };

        [HttpGet]
        public async Task<IActionResult> GetSuperheroesList()
        {
            return Ok(_Heroes);
        }

        [HttpGet("comics")]
        public async Task<IActionResult> GetComics()
        {
            return Ok(_Comics);
        }

        // or HTTPGet Route("{id}")
        [HttpGet("{id}")]
        public async Task<IActionResult> GetSingleSuperhero(int id)
        {
            Superhero? result = _Heroes.Find(hero => hero.Id == id);
            if (result == null)
            {
                return NotFound("Sorry, no hero is found.");
            }
            return Ok(result);
        }
    }
}