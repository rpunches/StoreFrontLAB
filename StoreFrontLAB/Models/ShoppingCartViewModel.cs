using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SFL.DATA.EF;//added
using System.ComponentModel.DataAnnotations;

namespace StoreFrontLAB.Models
{
    public class ShoppingCartViewModel
    {
        [Range(1, int.MaxValue, ErrorMessage ="* Quantity must be a value greater than 1.")]
        public int Qty { get; set; }
        public Movie Product { get; set; }

        public ShoppingCartViewModel(int qty, Movie product)
        {
            Qty = qty;
            Product = product;
        }

    }
}