using System;
using SuperHerores.Shared;

namespace SuperHerores.Client.Services.SuperheroService
{
	public interface ISuperheroService
	{
		public List<Superhero> Heroes { get; set; }
		public List<Comic> Comics { get; set; }

		Task GetComics();
		Task GetSuperhero();
		Task<Superhero> GetSingleSuperhero(int id);

	}
}

