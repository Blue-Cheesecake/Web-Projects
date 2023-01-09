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

        public Task GetComics()
        {
            throw new NotImplementedException();
        }

        public Task<Superhero> GetSingleSuperhero(int id)
        {
            throw new NotImplementedException();
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

