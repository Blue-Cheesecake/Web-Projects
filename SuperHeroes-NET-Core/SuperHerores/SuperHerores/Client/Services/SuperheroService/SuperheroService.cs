using System;
using SuperHerores.Shared;
using System.Net.Http.Json;

namespace SuperHerores.Client.Services.SuperheroService
{
	public class SuperheroService : ISuperheroService
	{
        private readonly HttpClient _Http;

        // Create Http injection
        public SuperheroService(HttpClient http)
		{
            _Http = http;
        }

        public List<Superhero> Heroes { get; set; } = new List<Superhero>();
        public List<Comic> Comics { get; set; } = new List<Comic>();

        public async Task GetComics()
        {
            var result = await _Http.GetFromJsonAsync<List<Comic>>("api/superhero/comics");
            if (result == null)
            {
                throw new Exception("No Comics");
            }
            Comics = result;
        }

        public async Task<Superhero> GetSingleSuperhero(int id)
        {
            var result = await _Http.GetFromJsonAsync<Superhero>($"api/superhero/{id}");
            if (result == null)
            {
                throw new Exception("Hero is not found");
            }
            return result;
        }

        public async Task GetSuperhero()
        {
            var result = await _Http.GetFromJsonAsync<List<Superhero>>("api/superhero");
            if (result == null)
            {
                return;
            }
            Heroes = result;
        }
    }
}

