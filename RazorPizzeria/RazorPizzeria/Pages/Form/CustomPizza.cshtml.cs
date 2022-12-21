using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using RazorPizzeria.Models;

namespace RazorPizzeria.Pages.Form
{
    public class CustomPizzaModel : PageModel
    {
        [BindProperty]
        public PizzasModel Pizza { get; set; }

        public void OnGet()
        {
        }

        private float GetFinalPrice(PizzasModel pizza)
        {
            var result = pizza.BasePrice;
            if (pizza.TomatoSauce) result++;
            if (pizza.Cheese) result++;
            if (pizza.Beef) result++;
            if (pizza.Ham) result++;
            if (pizza.Mushroom) result++;
            if (pizza.Peperoni) result++;
            if (pizza.Pineapple) result++;
            if (pizza.Tuna) result++;
            if (pizza.Vegetarian) result++;
            return result;
        }

        public IActionResult OnPost()
        {
            var PizzaPrice = GetFinalPrice(Pizza);
            return RedirectToPage("/Checkout/Checkout", new { Pizza.PizzaName, PizzaPrice });
        }
    }
}
