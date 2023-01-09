using System;
namespace SuperHerores.Shared
{
	public class Superhero
	{
		public int Id { get; set; }
		public string FirstName { get; set; } = string.Empty;
		public string LastName { get; set; } = string.Empty;
		public string HeroName { get; set; } = string.Empty;
		public Comic? Comic { get; set; }
		public int ComicId { get; set; }

	}
}

