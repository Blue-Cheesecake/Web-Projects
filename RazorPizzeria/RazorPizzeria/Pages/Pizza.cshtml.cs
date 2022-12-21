using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using RazorPizzeria.Models;

namespace RazorPizzeria.Pages
{
    public class PizzaModel : PageModel
    {

        public readonly List<PizzasModel> FakePizzaModels = new List<PizzasModel>(new PizzasModel[]
        {
            new PizzasModel() {PizzaName="Margerita", ImageTitle="Margerita", BasePrice=2, TomatoSauce=true, Cheese=true, FinalPrice=4},
            new PizzasModel() {PizzaName="Bolognese", ImageTitle="Bolognese", BasePrice=2, Cheese=true, Mushroom=true, FinalPrice=4},
            new PizzasModel() {PizzaName="Hawaiian", ImageTitle="Hawaiian", BasePrice=2, TomatoSauce=true, Cheese=true, FinalPrice=8},
            new PizzasModel() {PizzaName="Carbonara", ImageTitle="Carbonara", BasePrice=2, TomatoSauce=true, Cheese=true, Ham=true, FinalPrice=15},
            new PizzasModel() {PizzaName="MeatFeast", ImageTitle="MeatFeast", BasePrice=2, Tuna=true, TomatoSauce=true, FinalPrice=6},
            new PizzasModel() {PizzaName="Mushroom", ImageTitle="Mushroom", BasePrice=2, Mushroom=true, FinalPrice=3},
            new PizzasModel() {PizzaName="Pepperoni", ImageTitle="Pepperoni", BasePrice=2, Peperoni=true, Cheese=true, Pineapple=true, FinalPrice=5},
            new PizzasModel() {PizzaName="Seafood", ImageTitle="Seafood", BasePrice=2, TomatoSauce=true, Cheese=true, Tuna=true, Peperoni=true, FinalPrice=6},
            new PizzasModel() {PizzaName="Vegetarian", ImageTitle="Vegetarian", BasePrice=2, Mushroom=true, FinalPrice=3},

        });

        public void OnGet()
        { 

        }

    }
}
